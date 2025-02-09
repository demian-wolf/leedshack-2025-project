from enum import Enum
from datetime import datetime, timedelta
import json

import jwt
from sqlalchemy import func
from flask import current_app

from . import db
from app.exceptions import ValidationError


class User(db.Model):
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)

    email = db.Column(db.String(255), unique=True, nullable=False)
    password = db.Column(db.String(255), nullable=False)
    
    created_at = db.Column(
        db.DateTime, default=func.current_timestamp(),
        nullable=False,
    )

    name = db.Column(db.String(255), default="", nullable=False)
    
    streak_count = db.Column(db.Integer, default=0, nullable=False)
    streak_date = db.Column(db.Date, default=func.current_date(), nullable=False)

    class Diet(Enum):
        NONE = "NONE"

        VEGETARIAN = "VEGETARIAN"
        VEGAN = "VEGAN"

        HALAL = "HALAL"

    diet = db.Column(db.Enum(Diet), default=Diet.NONE, nullable=False)
    allergies = db.Column(db.String(255), default="[]", nullable=False)

    def _validate_allergies(self) -> None:
        try:
            data = json.loads(self.allergies)
        except json.JSONDecodeError as e:
            raise ValidationError("invalid allergies format") from e
        
        try:
            data = set(data)
        except TypeError as e:  # unhashable type
            raise ValidationError("invalid allergies format") from e

        if not data.issubset({"gluten", "lactose", "nuts", "seafood"}):
            raise ValidationError("invalid allergies format")

    def validate(self) -> None:
        if not self.email:
            raise ValidationError("email required")

        if "@" not in self.email:
            raise ValidationError("invalid email format")
        
        if self.streak_count < 0:
            raise ValidationError("negative streak not allowed")
        
        if self.diet not in User.Diet:
            raise ValidationError("invalid diet value, expected 0-3")
        
        self._validate_allergies()

    @staticmethod
    def encode_auth_token(user_id: int) -> str:
        issued_at = datetime.utcnow()
        
        payload = {
            "sub": str(user_id),
            "iat": issued_at,
            "exp": issued_at + timedelta(days=1),
        }

        return jwt.encode(
            payload,
            current_app.config.get("SECRET_KEY"),
            algorithm="HS256",
        )

    @staticmethod
    def decode_auth_token(token) -> int:
        try:
            payload = jwt.decode(
                token,
                current_app.config.get("SECRET_KEY"),
                algorithms=["HS256"],
            )

            if "sub" not in payload:
                raise RuntimeError

            return payload["sub"]
        
        except jwt.ExpiredSignatureError as e:
            raise RuntimeError from e
        
        except jwt.PyJWTError as e:
            raise RuntimeError from e


class BlackListedToken(db.Model):
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    token = db.Column(db.String(500), unique=True, nullable=False)
    
    created_at = db.Column(
        db.DateTime,
        default=func.current_timestamp(),
    )

    @staticmethod
    def is_blacklisted(token: str) -> bool:
        record = BlackListedToken.query.filter_by(
            token=token,
        ).first()

        return record is not None


meal_ingredient = db.Table(
    'meal_ingredient',
    db.Column('meal_id', db.Integer, db.ForeignKey('meal.id'), primary_key=True),
    db.Column('ingredient_id', db.Integer, db.ForeignKey('ingredient.id'), primary_key=True),
    db.Column('measure', db.String(50))
)

class Category(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(50), unique=True, nullable=False)
    thumbnail = db.Column(db.String(255))
    description = db.Column(db.Text)
    
    meals = db.relationship('Meal', backref='category', lazy=True)

class Area(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(50), unique=True, nullable=False)
    
    meals = db.relationship('Meal', backref='area', lazy=True)

class Ingredient(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(100), unique=True, nullable=False)
    description = db.Column(db.Text, nullable=True)

class Meal(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(255), nullable=False)
    category_id = db.Column(db.Integer, db.ForeignKey('category.id'), nullable=False)
    area_id = db.Column(db.Integer, db.ForeignKey('area.id'), nullable=False)
    prep_time = db.Column(db.Integer, nullable=True)
    instructions = db.Column(db.Text, nullable=False)
    thumbnail = db.Column(db.String(255), nullable=True)
    tags = db.Column(db.String(255), nullable=True)

    ingredients = db.relationship('Ingredient', secondary=meal_ingredient, backref=db.backref('meals', lazy='dynamic'))

    def to_dict(self) -> dict:
        return {
            "name": self.name,
            "prep_time": self.prep_time,
            "instructions": self.instructions,
            "thumbnail": self.thumbnail,
            "tags": self.tags,
            "ingredients": [i.name for i in self.ingredients],
        }

    # Methods to dynamically determine dietary categories
    def is_vegan(self):
        category = Category.query.get(self.category_id)
        return category.name.lower() == 'vegan'

    def is_vegetarian(self):
        category = Category.query.get(self.category_id)
        return category.name.lower() == 'vegetarian'

    def is_seafood(self):
        category = Category.query.get(self.category_id)
        return category.name.lower() == 'seafood'

    # Method to dynamically check for allergens
    def contains_nuts(self):
        nut_ingredients = ['almond', 'cashew', 'walnut', 'peanut', 'pecan', 'hazelnut', 'pistachio']
        for ingredient in self.ingredients:
            if any(nut in ingredient.name.lower() for nut in nut_ingredients):
                return True
        return False

    def contains_allergen(self, allergen_name):
        if allergen_name == "nuts":
            return self.contains_nuts()
        
        if allergen_name == "seafood":
            return self.is_seafood()

        for allergen in self.allergens:
            if allergen.name.lower() == allergen_name.lower():
                return True
        return False


    # Hardcoded list of allergens
    allergens_list = [
        "Chicken", "Salmon", "Beef", "Pork", "Avocado", "Eggs", 
        "Lamb", "Ginger", "Tomatoes", "Bacon", "Garlic", 
        "Yeasts", "Basil", "Carrots", "Basmati", "soya", 
        "Lemon", "Mushrooms", "Prawns", "Fish"
    ]

    def contains_allergen(self, allergen_name):
        for ingredient in self.ingredients:
            if allergen_name.lower() in ingredient.name.lower():
                return True
        return False

