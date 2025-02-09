import React from 'react';
import './Header.css';

const Header = () => {
  return (
    <header className="header">
      <div className="left-section">
        <h1>Mealio</h1>
        <nav>
          <ul>
            <li><a href="/">Home</a></li>
            <li><a href="/about">About</a></li>
            <li><a href="/contact">Contact</a></li>
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