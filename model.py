from flask import Flask
from flask_sqlalchemy import SQLAlchemy
import requests
import string
import re

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///meals.db'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db = SQLAlchemy(app)



def import_categories():
    url = "https://www.themealdb.com/api/json/v1/1/categories.php"
    response = requests.get(url)
    data = response.json()

    for item in data['categories']:
        category = Category.query.filter_by(name=item['strCategory']).first()
        if not category:
            category = Category(
                name=item['strCategory'],
                thumbnail=item['strCategoryThumb'],
                description=item['strCategoryDescription']
            )
            db.session.add(category)
    
    db.session.commit()
    print("Categories imported successfully!")

def import_areas():
    url = "https://www.themealdb.com/api/json/v1/1/list.php?a=list"
    response = requests.get(url)
    data = response.json()

    for item in data['meals']:
        area = Area.query.filter_by(name=item['strArea']).first()
        if not area:
            area = Area(name=item['strArea'])
            db.session.add(area)
    
    db.session.commit()
    print("Areas imported successfully!")

def import_ingredients():
    url = "https://www.themealdb.com/api/json/v1/1/list.php?i=list"
    response = requests.get(url)
    data = response.json()

    for item in data['meals']:
        ingredient = Ingredient.query.filter_by(name=item['strIngredient']).first()
        if not ingredient:
            ingredient = Ingredient(
                name=item['strIngredient'],
                description=item.get('strDescription', ''),
            )
            db.session.add(ingredient)
    
    db.session.commit()
    print("Ingredients imported successfully!")

def import_meal_by_name(meal_name):
    url = f"https://www.themealdb.com/api/json/v1/1/search.php?s={meal_name}"
    response = requests.get(url)
    data = response.json()

    if not data['meals']:
        print(f"No meals found for {meal_name}")
        return

    for item in data['meals']:
        category = Category.query.filter_by(name=item['strCategory']).first()
        if not category:
            category = Category(name=item['strCategory'])
            db.session.add(category)
            db.session.commit()

        area = Area.query.filter_by(name=item['strArea']).first()
        if not area:
            area = Area(name=item['strArea'])
            db.session.add(area)
            db.session.commit()

        meal = Meal(
            id=item['idMeal'],
            name=item['strMeal'],
            category_id=category.id,
            area_id=area.id,
            instructions=item['strInstructions'],
            thumbnail=item['strMealThumb'],
            tags=item.get('strTags', ''),
        )
        db.session.add(meal)
        db.session.commit()

        # 处理 Ingredients
        for i in range(1, 21):
            ingredient_name = item.get(f'strIngredient{i}')
            measure = item.get(f'strMeasure{i}')

            if ingredient_name and ingredient_name.strip():
                ingredient = Ingredient.query.filter_by(name=ingredient_name).first()
                if not ingredient:
                    ingredient = Ingredient(name=ingredient_name)
                    db.session.add(ingredient)
                    db.session.commit()

                db.session.execute(meal_ingredient.insert().values(meal_id=meal.id, ingredient_id=ingredient.id, measure=measure))

        db.session.commit()
        print(f"Meal {meal_name} imported successfully!")

def import_all_meal():
    for letter in string.ascii_lowercase:
        url = f"https://www.themealdb.com/api/json/v1/1/search.php?f={letter}"
        response = requests.get(url)
        data = response.json()

        if not data['meals']:
            print(f"No meals found starting with {letter}")
            continue

        for item in data['meals']:
            category = Category.query.filter_by(name=item['strCategory']).first()
            if not category:
                category = Category(name=item['strCategory'])
                db.session.add(category)
                db.session.commit()

            area = Area.query.filter_by(name=item['strArea']).first()
            if not area:
                area = Area(name=item['strArea'])
                db.session.add(area)
                db.session.commit()

            meal = Meal(
                id=item['idMeal'],
                name=item['strMeal'],
                category_id=category.id,
                area_id=area.id,
                instructions=item['strInstructions'],
                thumbnail=item['strMealThumb'],
                tags=item.get('strTags', ''),
            )
            db.session.add(meal)
            db.session.commit()

            # Handle Ingredients
            for i in range(1, 21):
                ingredient_name = item.get(f'strIngredient{i}')
                measure = item.get(f'strMeasure{i}')

                if ingredient_name and ingredient_name.strip():
                    ingredient = Ingredient.query.filter_by(name=ingredient_name).first()
                    if not ingredient:
                        ingredient = Ingredient(name=ingredient_name)
                        db.session.add(ingredient)
                        db.session.commit()

                    # Check if the combination of meal_id and ingredient_id already exists
                    existing = db.session.query(meal_ingredient).filter_by(meal_id=meal.id, ingredient_id=ingredient.id).first()
                    if not existing:
                        db.session.execute(meal_ingredient.insert().values(meal_id=meal.id, ingredient_id=ingredient.id, measure=measure))


            db.session.commit()
            print(f"Meal {item['strMeal']} starting with {letter} imported successfully!")

def get_cooking_time(s):
    """
    :param s: The input text (a string) containing the strInstructions
    :return: The total cooking time in minutes as an integer
    """
    sum_minutes = 0
    

    matches = re.findall(r'(\d+)\s*min(?:ute|s)?', s)

    sum_minutes = max(sum(int(match) for match in matches),10)

    return sum_minutes

def update_prep_time():
    with app.app_context():
        meals = Meal.query.all()
        for meal in meals:
            prep_time = get_cooking_time(meal.instructions)
            meal.prep_time = prep_time
            db.session.add(meal)
        db.session.commit()

        """meals = Meal.query.all()
        for meal in meals:
            print(meal.__dict__)
        """
        print("Prep times updated successfully!")


with app.app_context():
    db.drop_all()
    db.create_all()

    import_categories()
    import_areas()
    import_ingredients()
    import_all_meal()
    update_prep_time()
