from datetime import datetime, timedelta

import jwt
from sqlalchemy import func
from flask import current_app

from . import db


class User(db.Model):
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)

    email = db.Column(db.String(255), unique=True, nullable=False)
    password = db.Column(db.String(255), unique=True, nullable=False)
    
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

    @staticmethod
    def is_blacklisted(token: str) -> bool:
        record = BlackListedToken.query.filter_by(
            token=token,
        ).first()

        return record is not None
