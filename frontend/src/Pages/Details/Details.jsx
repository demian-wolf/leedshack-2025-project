import React, { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';
import './Details.css';

const Details = () => {
  const { id } = useParams();
  const [meal, setMeal] = useState(null);

  useEffect(() => {
    // Simulating API response
    const mockMeals = [
      { id: 1, name: "Veggie Burger", thumbnail: "https://via.placeholder.com/150", tags: "Vegetarian, Healthy", description: "A delicious veggie burger made with fresh vegetables and whole grains.", ingredients: ["Lettuce", "Tomato", "Veggie Patty", "Whole Grain Bun"], instructions: "Grill the veggie patty, assemble with lettuce, tomato, and bun." },
      { id: 2, name: "Salad Bowl", thumbnail: "https://via.placeholder.com/150", tags: "Vegetarian, Fresh", description: "A refreshing salad bowl with a mix of greens, vegetables, and a light dressing.", ingredients: ["Mixed Greens", "Cucumber", "Tomato", "Carrot", "Olive Oil", "Lemon Juice"], instructions: "Chop all vegetables, mix with greens, and drizzle with olive oil and lemon juice." },
      { id: 3, name: "Grilled Salmon", thumbnail: "https://via.placeholder.com/150", tags: "Seafood, Grilled", description: "Perfectly grilled salmon with a hint of lemon and herbs.", ingredients: ["Salmon Fillet", "Lemon", "Olive Oil", "Garlic", "Dill"], instructions: "Marinate salmon with olive oil, garlic, and dill. Grill until cooked through." },
      { id: 4, name: "Chocolate Cake", thumbnail: "https://via.placeholder.com/150", tags: "Dessert, Sweet", description: "A rich and moist chocolate cake that's perfect for any occasion.", ingredients: ["Flour", "Sugar", "Cocoa Powder", "Eggs", "Butter", "Milk"], instructions: "Mix all ingredients, bake at 350°F for 30 minutes, and let cool before serving." },
      { id: 5, name: "Spicy Tacos", thumbnail: "https://via.placeholder.com/150", tags: "Spicy, Mexican", description: "Spicy tacos filled with seasoned meat, fresh veggies, and a kick of heat.", ingredients: ["Ground Beef", "Taco Seasoning", "Lettuce", "Tomato", "Cheese", "Taco Shells"], instructions: "Cook ground beef with taco seasoning, fill taco shells with beef, lettuce, tomato, and cheese." }
    ];

    const selectedMeal = mockMeals.find(meal => meal.id === parseInt(id));
    setMeal(mockMeals[0]);
  }, [id]);

  if (!meal) {
    return <div className="loading">Loading...</div>;
  }

  return (
    <div className="details-container">
      <div className="thumbnail-and-name">
        <img src={meal.thumbnail} alt={meal.name} className="meal-image" />
        <h2>{meal.name}</h2>
        <p className="meal-tags">{meal.tags}</p>
      </div>
      <div className="info-container">
        <div className="meal-description">
          <h3>Description</h3>
          <p>{meal.description}</p>
        </div>
        <div className="meal-ingredients">
          <h3>Ingredients</h3>
          <ul className="ingredients-list">
            {meal.ingredients.map((ingredient, index) => (
              <li key={index}>{ingredient}</li>
            ))}
          </ul>
        </div>
        <div className="meal-instructions">
          <h3>Instructions</h3>
          <p>{meal.instructions}</p>
        </div>
      </div>
    </div>
  );
};

export default Details;