import React, { useState } from "react";
import { Link, useLocation, useNavigate } from "react-router-dom";

import { api_url } from "../../config.jsx";
import styles from "./Auth.module.css";


export const Auth = () => {
    const location = useLocation();
    const navigate = useNavigate();

    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    const [errorMessage, setErrorMessage] = useState('');
    const [isLoading, setIsLoading] = useState(false);

    const handleSubmit = async (e) => {
        e.preventDefault();

        if (isLoading) return;

        setIsLoading(true);
        setErrorMessage("");

        const data = { email, password };

        try {
            const endpoint = `/auth${location.pathname}`;

            const response = await fetch(`${api_url}${endpoint}`, {
                method: "POST",
                headers: { "Content-Type": "application/json" },
                body: JSON.stringify(data),
            });

            const result = await response.json();

            if (response.ok) {
                localStorage.setItem("auth_token", result.auth_token);
                navigate("/");
            } else {
                setErrorMessage(result.message || "Request failed.");
            }
        } catch (error) {
            setErrorMessage("Server error. Please try again later.");
            console.error(error);
        } finally {
            setIsLoading(false);
        }
    };

    return (
        <div>
            <Link className={styles.title} to="/">Mealio</Link>

            <div className={styles.container}>
                <form onSubmit={handleSubmit}>
                    <div className={styles.box}>
                        <h2 className={styles.header}>
                            {location.pathname === "/login" ? "Login" : "Sign Up"}
                        </h2>
                        
                        <p className={styles.maintext}>
                            {location.pathname === "/login"
                                ? "Please enter your credentials to log in."
                                : "Please fill in your details to create an account."}
                        </p>

                        {errorMessage && <p className={styles.error}>{errorMessage}</p>}

                        <div className={styles.emailbox}>
                            <input
                                type="text"
                                placeholder="Enter Email"
                                name="email"
                                value={email}
                                onChange={(e) => setEmail(e.target.value)}
                                required
                            />
                        </div>

                        <div className={styles.passwordbox}>
                            <input
                                type="password"
                                placeholder="Enter Password"
                                name="password"
                                value={password}
                                onChange={(e) => setPassword(e.target.value)}
                                required
                            />
                        </div>

                        {location.pathname === "/login" && (
                            <div className={styles.terms}>
                                <p>Forgot your password? <a href="#" style={{ color: 'dodgerblue' }}>Reset here</a>.</p>
                            </div>
                        )}

                        <div className={styles.mybuttons}>
                            <button className={styles.submitbtn} type="submit" disabled={isLoading}>
                                {isLoading ? (location.pathname === "/login" ? 'Logging in...' : 'Signing up...') : (location.pathname === "/login" ? 'Login' : 'Sign Up')}
                            </button>
                        </div>

                        {location.pathname === "/login" && (
                            <div className={styles.mybuttons}>
                                <p>No account? <Link to="/signup" style={{ color: 'dodgerblue' }}>Sign Up</Link>!</p>
                            </div>
                        )}
                        {location.pathname === "/signup" && (
                            <div className={styles.mybuttons}>
                                <p>Already have an account? <Link to="/login" style={{ color: 'dodgerblue' }}>Login</Link></p>
                            </div>
                        )}
                    </div>
                </form>
            </div>
        </div>
    );
};
