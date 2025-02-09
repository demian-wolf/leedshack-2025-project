import json
from flask import request, jsonify
from flask.views import MethodView

from app.utils import get_user, save_user


class ProfileView(MethodView):
    def get(self):
        try:
            user = get_user(request)
        except RuntimeError:
            return jsonify(
                status="fail",
                message="not authorised",
            ), 401
        
        return jsonify(
            name=user.name,

            streak_count=user.streak_count,
            streak_date=user.streak_date,

            diet=user.diet.value,
            allergies=user.allergies,
        )
    
    def post(self):
        try:
            user = get_user(request)
        except RuntimeError:
            return jsonify(
                status="fail",
                message="not authorised",
            ), 401

        # for simplicity
        if set(request.json.keys()) != {"name", "diet", "allergies"}:
            return jsonify(status="fail", message="missing fields"), 400

        user.name = request.json["name"]
        user.diet = request.json["diet"]
        user.allergies = json.dumps(request.json["allergies"])

        try:
            save_user(user)
        except ValueError:
            return jsonify(status="fail", message="invalid format"), 400

        return jsonify(status="success", message="profile updated")
