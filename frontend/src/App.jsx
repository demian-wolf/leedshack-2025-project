import React from "react";
import styles from './App.module.css';
import { Route, Routes, useLocation } from "react-router-dom";
import { Signup } from "./Pages/Signup/Signup";
import Header from "./components/Header/Header";
import Sidebar from "./components/Sidebar/Sidebar";
import MainContent from "./components/MainContent/MainContent";
import Footer from "./components/Footer/Footer";
import './index.css';

const App = () => {
  const location = useLocation();   

  const isSignupPage = location.pathname === "/signup";

  return (
    <div className={styles.app}>
      {!isSignupPage && <Header />}

      <div className={styles.content}>
        {!isSignupPage && <Sidebar />}

        <main className={styles.main}>
          <Routes>
            <Route path="/signup" element={<Signup />} />
            <Route path="/" element={<MainContent />} />
          </Routes>
        </main>
      </div>

      {!isSignupPage && <Footer />}
    </div>
  );
};

export default App;