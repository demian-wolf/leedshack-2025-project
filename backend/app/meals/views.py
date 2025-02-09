from flask import request, jsonify

from flask.views import MethodView

from app.utils import get_user
from app.meals.utils import generate_meal, grow_tree


class GenerateMealView(MethodView):
    def get(self):
        data = request.json

        meal = generate_meal(
            data["diet"], data["allergies"],
            data["cooking_time"],
        )

        if meal is None:
            return jsonify(status="fail", message="not found"), 404

        return jsonify(meal.to_dict())


class LetsCookMealView(MethodView):
    def get(self):
        try:
            user = get_user(request)
        except RuntimeError:
            return jsonify(
                status="fail",
                message="not authorised",
            ), 401
        
        try:
            grow_tree(user)
        except Exception as e:
            return jsonify(
                status="fail",
                message="error occurred, retry",
            ), 500

        return jsonify(
            status="success",
            message="tree grown",
        )
