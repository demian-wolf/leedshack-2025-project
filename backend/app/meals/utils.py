import json
from typing import Optional

from app import db
from app.models import User, Meal


def _closest(meals: list[Meal], prep_time: int):
    out = None
    closest_diff = float("inf")
    
    for meal in meals:
        diff = abs(meal.prep_time - prep_time)

        if diff < closest_diff:
            closest_diff = diff
            out = meal

    return out


def _is_ok(meal: Meal, diet: User.Diet, allergies: list[str]):
    m_allergies = json.loads(meal.allergies)

    if set(m_allergies).intersection(allergies):
        return False
    
    if (meal.diet is not None) and (meal.diet != User.Diet.NONE):
        if meal.diet != diet:
            return False
    
    return True


def generate_meal(diet: User.Diet, allergies: list[str], prep_time: list[str]) -> Optional[Meal]:
    meals = db.session.query(Meal).all()
    # inefficient but ok...

    return _closest(
        [m for m in meals if _is_ok(m, diet, allergies)],
        prep_time,
    )
