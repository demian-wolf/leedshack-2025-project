import React, { useEffect, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import './SelectTags.css';

const mockMeals = {
  All: [
    { id: 1, name: "Veggie Burger", thumbnail: "https://via.placeholder.com/150", tags: "Vegetarian, Healthy" },
    { id: 2, name: "Salad Bowl", thumbnail: "https://via.placeholder.com/150", tags: "Vegetarian, Fresh" },
    { id: 3, name: "Grilled Salmon", thumbnail: "https://via.placeholder.com/150", tags: "Seafood, Grilled" },
    { id: 4, name: "Chocolate Cake", thumbnail: "https://via.placeholder.com/150", tags: "Dessert, Sweet" },
    { id: 5, name: "Spicy Tacos", thumbnail: "https://via.placeholder.com/150", tags: "Spicy, Mexican" },
    { id: 6, name: "Pasta", thumbnail: "https://via.placeholder.com/150", tags: "Vegetarian, Italian" },
    { id: 7, name: "Sushi", thumbnail: "https://via.placeholder.com/150", tags: "Seafood, Japanese" },
    { id: 8, name: "Cheesecake", thumbnail: "https://via.placeholder.com/150", tags: "Dessert, Sweet" },
    { id: 9, name: "Chicken Curry", thumbnail: "https://via.placeholder.com/150", tags: "Spicy, Indian" },
    { id: 10, name: "Pizza", thumbnail: "https://via.placeholder.com/150", tags: "Vegetarian, Italian" }
  ],
  Vegetarian: [
    { id: 1, name: "Veggie Burger", thumbnail: "https://via.placeholder.com/150", tags: "Vegetarian, Healthy" },
    { id: 2, name: "Salad Bowl", thumbnail: "https://via.placeholder.com/150", tags: "Vegetarian, Fresh" },
    { id: 6, name: "Pasta", thumbnail: "https://via.placeholder.com/150", tags: "Vegetarian, Italian" },
    { id: 10, name: "Pizza", thumbnail: "https://via.placeholder.com/150", tags: "Vegetarian, Italian" }
  ],
  Seafood: [
    { id: 3, name: "Grilled Salmon", thumbnail: "https://via.placeholder.com/150", tags: "Seafood, Grilled" },
    { id: 7, name: "Sushi", thumbnail: "https://via.placeholder.com/150", tags: "Seafood, Japanese" }
  ],
  Dessert: [
    { id: 4, name: "Chocolate Cake", thumbnail: "https://via.placeholder.com/150", tags: "Dessert, Sweet" },
    { id: 8, name: "Cheesecake", thumbnail: "https://via.placeholder.com/150", tags: "Dessert, Sweet" }
  ],
  Spicy: [
    { id: 5, name: "Spicy Tacos", thumbnail: "https://via.placeholder.com/150", tags: "Spicy, Mexican" },
    { id: 9, name: "Chicken Curry", thumbnail: "https://via.placeholder.com/150", tags: "Spicy, Indian" }
  ]
};

const SelectTags = () => {
  const [tags, setTags] = useState(["All", "Vegetarian", "Seafood", "Dessert", "Spicy"]);
  const [selectedTag, setSelectedTag] = useState('All');
  const [meals, setMeals] = useState(mockMeals.All);
  const [currentPage, setCurrentPage] = useState(1);
  const [mealsPerPage] = useState(4);
  const navigate = useNavigate();

  useEffect(() => {
    setMeals(selectedTag === "All" ? mockMeals.All : mockMeals[selectedTag] || []);
    setCurrentPage(1);
  }, [selectedTag]);

  const indexOfLastMeal = currentPage * mealsPerPage;
  const indexOfFirstMeal = indexOfLastMeal - mealsPerPage;
  const currentMeals = meals.slice(indexOfFirstMeal, indexOfLastMeal);

  const totalPages = Math.ceil(meals.length / mealsPerPage);

  const handlePageClick = (pageNumber) => {
    setCurrentPage(pageNumber);
  };

  const handlePrevPage = () => {
    if (currentPage > 1) {
      setCurrentPage(currentPage - 1);
    }
  };

  const handleNextPage = () => {
    if (currentPage < totalPages) {
      setCurrentPage(currentPage + 1);
    }
  };

  const handleMealClick = (id) => {
    navigate(`/details/${id}`);
  };

  return (
    <div className="select-tags">
      <h2>Select a Tag</h2>
      <div className="tags-container">
        {tags.map((tag) => (
          <button
            key={tag}
            className={selectedTag === tag ? 'tag-button selected' : 'tag-button'}
            onClick={() => setSelectedTag(tag)}
          >
            {tag}
          </button>
        ))}
      </div>

      <div className="meals-list">
        {currentMeals.length > 0 ? (
          currentMeals.map((meal) => (
            <div
              key={meal.id}
              className="meal-card"
              onClick={() => handleMealClick(meal.id)}
            >
              <img src={meal.thumbnail} alt={meal.name} className="meal-image" />
              <div className="meal-info">
                <h3>{meal.name}</h3>
                <p className="meal-tags">Tags: {meal.tags}</p>
              </div>
            </div>
          ))
        ) : (
          <p className="no-meals">No meals found for this tag.</p>
        )}
      </div>

      <div className="pagination">
        <button
          onClick={handlePrevPage}
          disabled={currentPage === 1}
          className="pagination-button"
        >
          Previous
        </button>
        {Array.from({ length: totalPages }, (_, index) => (
          <button
            key={index + 1}
            onClick={() => handlePageClick(index + 1)}
            className={currentPage === index + 1 ? 'pagination-button active' : 'pagination-button'}
          >
            {index + 1}
          </button>
        ))}
        <button
          onClick={handleNextPage}
          disabled={currentPage === totalPages}
          className="pagination-button"
        >
          Next
        </button>
      </div>
    </div>
  );
};

export default SelectTags;