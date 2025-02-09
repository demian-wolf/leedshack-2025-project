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
<<<<<<< HEAD
          <a href="/login">
              <button type="button">Login</button>
          </a>
      </div>

=======
        <button type="submit">Login</button>
      </div>
>>>>>>> c556e87096233ab0e37b8a3c1bd40c7c2e00e7e0
    </header>
  );
};

export default Header;