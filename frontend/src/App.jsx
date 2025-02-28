import React from "react";
import styles from './App.module.css';

import { Route, Routes, useLocation } from "react-router-dom";

import { About } from "./Pages/About/About";
import { Auth } from "./Pages/Auth/Auth";
import { Dashboard } from "./Pages/Dashboard/Dashboard";
import { Day } from "./Pages/Day/Day";
import SelectTags from "./Pages/SelectTags/SelectTags";

import Header from "./components/Header/Header";
import MainContent from "./components/MainContent/MainContent";
import Footer from "./components/Footer/Footer";

import './index.css';


const App = () => {
  const location = useLocation();
  const isSignupPage = ["/signup", "/login"].includes(location.pathname);

  return (
    <div className={styles.app}>
      <Header />

      <div className={styles.content}>
        <main className={styles.main}>
          <Routes>
            <Route path="/MainContent" element={<MainContent/>}/>
            
            <Route path="/" element={<Dashboard/>} />
            <Route path="/about" element={<About/>}/>

            <Route path="/login" element={<Auth/>}/>
            <Route path="/signup" element={<Auth/>}/>
            
            <Route path="/day/:id" element={<Day/>}/>
            <Route path="/selectTags" element={<SelectTags/>}/>
          </Routes>
        </main>
      </div>

      <Footer />
    </div>
  );
};

export default App;
