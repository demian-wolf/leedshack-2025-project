import React from 'react';

import './Checklist.css';


const Checklist = () => {
  return (
    <main className="main-content">
      <h2>Meal Tracker</h2>
      <p>Time to keep track of your meals</p>

      <label class="container" htmlFor="">Breakfast
        <input type="checkbox" checked="checked" />
        <span class="checkmark"></span>
    </label>

    <label class="container" htmlFor="">Lunch
        <input type="checkbox" checked="checked" />
        < span class="checkmark"></span>
    </label>

    <label class="container" htmlFor="">Dinner
        <input type="checkbox" checked="checked" />
        < span class="checkmark"></span>
    </label>

    <div>
        <button class="generate" type="button">Let's Cook!</button>
    </div>
     





      </main>
  );
};

export default Checklist;