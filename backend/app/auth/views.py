import logging

import bcrypt
from flask import request, make_response, jsonify
from flask.views import MethodView

from app import db
from app.utils import get_user, logout_user
from app.models import User


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

            password = bcrypt.hashpw(password.encode(), bcrypt.gensalt())
            password = password.decode()

            user = User(email=email, password=password)
            db.session.add(user)

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
            
            checkpw = bcrypt.checkpw(
                data.get("password").encode(), user.password.encode(),
            )

            if not checkpw:
                return jsonify({
                    "status": "fail",
                    "message": "invalid password",
                }), 403

            return jsonify({
                "status": "success",
                "message": "logged in",
                "auth_token": user.encode_auth_token(user.id),
            })
        
        except Exception as e:
            logging.error(e)
        
            return jsonify({
                "status": "fail",
                "message": "error occurred, retry",
            }), 500


class LogOutView(MethodView):
    def post(self):
        try:
            get_user(request)  # validate auth token
        except RuntimeError:
            return jsonify(
                status="fail",
                message="invalid token"
            ), 400
        
        try:
            logout_user(request)
        except Exception as e:
            logging.error(e)

            return jsonify(
                status="fail",
                message="error occurred, retry",
            ), 500

        return jsonify(
            status="success",
            message="user logged out",
        )
