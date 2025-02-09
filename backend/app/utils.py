from typing import Optional

from flask import Request

from . import db
from .models import BlackListedToken, User


def get_auth_token(request: Request) -> Optional[str]:
    header = request.headers.get("Authorization")

    if header is None:
        return None
    
    header = header.strip()
    header = header.split()

    if len(header) != 2:
        return None
    
    if header[0].lower() != "bearer":
        return None
    
    return header[1]


def get_user(request: Request) -> User:
    token = get_auth_token(request)

    if token is None:
        raise RuntimeError

    if BlackListedToken.is_blacklisted(token):
        raise RuntimeError
    
    user = User.query.filter_by(
        id=User.decode_auth_token(token),
    ).first()
    
    if user is None:
        raise RuntimeError

    return user


def logout_user(request: Request) -> User:
    token = get_auth_token(request)

    if token is None:
        raise RuntimeError
    
    try:
        db.session.add(
            BlackListedToken(token=token),
        )
        db.session.commit()
    
    except Exception as e:
        db.session.rollback()
        
        raise
