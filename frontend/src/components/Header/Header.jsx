import React from 'react';

import './Header.css';


const Header = () => {
  return (
    <header className="header">
      <div className="left-section">
        <h1>Mealio</h1>
        <nav>
          <ul>
            <li><a href="/">Dashboard</a></li>
            <li><a href="/about">About us</a></li>
          </ul>
        </nav>
      </div>

      <div className="right-section">
          <a href="/login">
              <button type="button">Login</button>
          </a>
      </div>

    </header>
  );
};

export default Header;
