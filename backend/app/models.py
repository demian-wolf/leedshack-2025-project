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
