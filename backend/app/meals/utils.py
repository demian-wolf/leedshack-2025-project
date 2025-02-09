import json
from datetime import date
from typing import Optional

from app import db
from app.utils import save_user
from app.models import User, Meal


def _closest(meals: list, prep_time: int):
    out = None
    closest_diff = float("inf")
    
    for meal in meals:
        diff = abs(meal.prep_time - prep_time)

        if diff < closest_diff:
            closest_diff = diff
            out = meal

    return out


def _is_ok(meal: Meal, diet: str, allergies: list):
    for a in allergies:
        if meal.contains_allergen(a):
            return False
    
    if diet == "VEGAN":
        return meal.is_vegan()
    
    if diet == "VEGETARIAN":
        return meal.is_vegetarian()

    return True


def generate_meal(diet: User.Diet, allergies, prep_time) -> Optional[Meal]:
    meals = Meal.query.all()
    # inefficient but ok...

    return _closest(
        [m for m in meals if _is_ok(m, diet, allergies)],
        prep_time,
    )


def grow_tree(user: User) -> None:
    try:
        user.streak_count += 1
        user.streak_date = date.today()
    
        save_user(user)
    except Exception as e:
        db.session.rollback()
        raise
