from enum import Enum
from datetime import datetime, timedelta

import jwt
from sqlalchemy import func
from flask import current_app

from . import db


class User(db.Model):
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)

    email = db.Column(db.String(255), unique=True)
    password = db.Column(db.String(255))
    
    created_at = db.Column(
        db.DateTime, default=func.current_timestamp(),
    )

    name = db.Column(db.String(255))
    
    streak_count = db.Column(db.Integer, default=0)
    streak_date = db.Column(db.Date, default=func.current_date())

    class Diet(Enum):
        NONE = 0

        VEGETARIAN = 1
        VEGAN = 2

        HALAL = 3

    diet = db.Column(db.Enum(Diet), default=Diet.NONE)
    allergies = db.Column(db.String(255), default="[]")

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
            if BlackListedToken.is_blacklisted(token):
                raise RuntimeError("blacklisted token")

            payload = jwt.decode(
                token,
                current_app.config.get("SECRET_KEY"),
                algorithms=["HS256"],
            )

            if "sub" not in payload:
                raise RuntimeError("invalid token")

            return payload["sub"]
        
        except jwt.ExpiredSignatureError as e:
            raise RuntimeError("signature has expired") from e
        
        except jwt.PyJWTError as e:
            raise RuntimeError("invalid token") from e


class BlackListedToken(db.Model):
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    token = db.Column(db.String(500), unique=True)
    
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
