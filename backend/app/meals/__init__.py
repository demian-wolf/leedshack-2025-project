from flask import Blueprint

from .views import GenerateMealView, LetsCookMealView


meals_bp = Blueprint("meals", __name__)

meals_bp.add_url_rule(
    "/meals/generate",
    view_func=GenerateMealView.as_view("generate_meal_view"),
    methods=["GET"],
)

meals_bp.add_url_rule(
    "/meals/grow",
    view_func=LetsCookMealView.as_view("letscook_meal_view"),
    methods=["GET"],
)
