from datetime import datetime, timedelta

import jwt
from sqlalchemy import func
from flask import current_app

from . import db


class User(db.Model):
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)

    email = db.Column(db.String(255), unique=True, nullable=False)
    password = db.Column(db.String(255), nullable=False)
    
    created_at = db.Column(
        db.DateTime,
        nullable=False, default=func.current_timestamp(),
    )

    profile_id = db.Column(
        db.Integer, db.ForeignKey("user_profile.id"),
        nullable=True,
    )
    profile = db.relationship("UserProfile", backref="users")

    @staticmethod
    def encode_auth_token(user_id: int) -> str:
        issued_at = datetime.utcnow()
        
        payload = {
            "sub": user_id,
            "iat": issued_at,
            "exp": issued_at + timedelta(seconds=5),
        }

        return jwt.encode(
            payload,
            current_app.config.get("SECRET_KEY"),
        )

    @staticmethod
    def decode_auth_token(token) -> int:
        try:
            payload = jwt.decode(
                token,
                current_app.config.get("SECRET_KEY"),
            )

            if "sub" not in payload:
                raise RuntimeError("Invalid token")

            return payload["sub"]
        
        except jwt.ExpiredSignatureError as e:
            raise RuntimeError("Signature expired") from e
        
        except jwt.PyJWTError as e:
            raise RuntimeError("Invalid token") from e


class UserProfile(db.Model):
    id = db.Column(db.Integer, primary_key=True, autoincrement=False)
    name = db.Column(db.String(255), nullable=False)

    user = db.relationship("User", back_populates="profile")


class BlackListedToken(db.Model):
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    token = db.Column(db.String(500), unique=True, nullable=False)
    
    created_at = db.Column(
        db.DateTime,
        nullable=False, default=func.current_timestamp(),
    )
