import logging
from typing import Optional

import bcrypt
<<<<<<< HEAD
from flask import current_app, request, make_response, jsonify
=======
from flask import request, make_response, jsonify
>>>>>>> c556e87096233ab0e37b8a3c1bd40c7c2e00e7e0
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

<<<<<<< HEAD
            password = bcrypt.hashpw(
                password,
                bcrypt.gensalt(current_app.config.get("SALT", 14)),
            )

            user = User(email=email, password=password)
            
            db.session.add()
=======
            password = bcrypt.hashpw(password.encode(), bcrypt.gensalt())
            password = password.decode()

            user = User(email=email, password=password)
            
            db.session.add(user)
>>>>>>> c556e87096233ab0e37b8a3c1bd40c7c2e00e7e0
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
            
<<<<<<< HEAD
            if not bcrypt.checkpw(user.password, data.get("password")):
=======
            checkpw = bcrypt.checkpw(
                data.get("password").encode(), user.password.encode(),
            )

            if not checkpw:
>>>>>>> c556e87096233ab0e37b8a3c1bd40c7c2e00e7e0
                return jsonify({
                    "status": "fail",
                    "message": "invalid password",
                }), 403

            return jsonify({
                "status": "success",
                "message": "logged in",
<<<<<<< HEAD
                "auth_token": user.encode.auth_token(user.id),
            }), 201
=======
                "auth_token": user.encode_auth_token(user.id),
            })
>>>>>>> c556e87096233ab0e37b8a3c1bd40c7c2e00e7e0
        
        except Exception as e:
            logging.error(e)
        
            return jsonify({
                "status": "fail",
                "message": "error occurred, retry",
            }), 500


class LogOutView(MethodView):
    @staticmethod
    def _auth_token() -> Optional[str]:
<<<<<<< HEAD
        header = request.headers.get("Authorisation")
=======
        header = request.headers.get("Authorization")
>>>>>>> c556e87096233ab0e37b8a3c1bd40c7c2e00e7e0

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
<<<<<<< HEAD
                "message": "invalid auth token",
            }), 403
        
        try:
            User.decode_auth_token(auth_token)
        except RuntimeError as e:
            logging.error(e)
=======
                "message": "invalid token",
            }), 400
        
        logging.info(f"logout: {auth_token = }")

        try:
            User.decode_auth_token(auth_token)
        except RuntimeError as e:
            logging.exception("message")
>>>>>>> c556e87096233ab0e37b8a3c1bd40c7c2e00e7e0

            return jsonify({
                "status": "fail",
                "message": str(e),
<<<<<<< HEAD
            })
=======
            }), 400
>>>>>>> c556e87096233ab0e37b8a3c1bd40c7c2e00e7e0

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

<<<<<<< HEAD
            return {
                "status": "fail",
                "message": "error occurred, retry",
            }
=======
            return jsonify({
                "status": "fail",
                "message": "error occurred, retry",
            }), 500
>>>>>>> c556e87096233ab0e37b8a3c1bd40c7c2e00e7e0
