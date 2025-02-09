from flask import request, jsonify

from flask.views import MethodView

from .utils import generate_meal


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
