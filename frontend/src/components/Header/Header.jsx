import React from 'react';

import './Header.css';


const logoutRoutine = () => {
  localStorage.setItem("auth_token", "null");
  location.reload();
}

const Header = () => {
  const isLoggedIn = localStorage.getItem("auth_token") !== "null";

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
        { !isLoggedIn ? (
          <div>
            <a href="/login">
                <button type="button">Log in</button>
            </a>
            <a href="/signup">
                <button type="button">Sign up</button>
            </a>
          </div>
        ) : (
          <div>
            <span>email@gmail.com</span>
            <a href="/profile">
              <button type="button">Profile</button>
            </a>
            <a onClick={logoutRoutine}>
              <button type="button">Log out</button>
            </a>
          </div>
        )}
      </div>
    </header>
  );
};

export default Header;
