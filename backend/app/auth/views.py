import logging
from typing import Optional

import bcrypt
from flask import current_app, request, make_response, jsonify
from flask.views import MethodView

from app import db
from app.models import User, BlackListedToken


class SignUpView(MethodView):
    def post(self):
        data = request.get_json()

        email = data.get("email")
        password = data.get("password")

        try:
            user = User.query.filter_by(email=email)
            user = user.first()
            
            if user is not None:
                return jsonify({
                    "status": "fail",
                    "message": "user already exists",
                }), 409

            password = bcrypt.hashpw(
                password,
                bcrypt.gensalt(current_app.config.get("SALT", 14)),
            )

            user = User(email=email, password=password)
            
            db.session.add()
            db.session.commit()

            return jsonify({
                "status": "success",
                "message": "signed up",
                "auth_token": user.encode_auth_token(user.id),
            })

        except Exception as e:
            logging.error(e)

            return make_response(jsonify(
                {
                    "status": "fail",
                    "message": "error occurred, retry"
                }
            )), 500


class LogInView(MethodView):
    def post(self):
        data = request.get_json()
        
        try:
            user = User.query.filter_by(email=data.get("email"))
            user = user.first()

            if not user:
                return jsonify({
                    "status": "fail",
                    "message": "user does not exist",
                }), 404
            
            if not bcrypt.checkpw(user.password, data.get("password")):
                return jsonify({
                    "status": "fail",
                    "message": "invalid password",
                }), 403

            return jsonify({
                "status": "success",
                "message": "logged in",
                "auth_token": user.encode.auth_token(user.id),
            }), 201
        
        except Exception as e:
            logging.error(e)
        
            return jsonify({
                "status": "fail",
                "message": "error occurred, retry",
            }), 500


class LogOutView(MethodView):
    @staticmethod
    def _auth_token() -> Optional[str]:
        header = request.headers.get("Authorisation")

        if header is None:
            return None
        
        header = header.strip()
        header = header.split()

        if len(header) != 2:
            return None
        
        if header[0].lower() != "bearer":
            return None
        
        return header[1]

    def post(self):
        auth_token = self._auth_token()

        if auth_token is None:
            return jsonify({
                "status": "fail",
                "message": "invalid auth token",
            }), 403
        
        try:
            User.decode_auth_token(auth_token)
        except RuntimeError as e:
            logging.error(e)

            return jsonify({
                "status": "fail",
                "message": str(e),
            })

        blacklisted = BlackListedToken(token=auth_token)

        try:
            db.session.add(blacklisted)
            db.session.commit()

            return jsonify({
                "status": "success",
                "message": "logged out"
            })
        
        except Exception as e:
            db.session.rollback()
            logging.error(e)

            return {
                "status": "fail",
                "message": "error occurred, retry",
            }
