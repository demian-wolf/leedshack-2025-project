import React from "react";
import styles from './App.module.css';

import { Route, Routes, useLocation } from "react-router-dom";

import { Auth } from "./Pages/Auth/Auth"
import { Home } from "./Pages/Home/Home";
import { Day } from "./Pages/Day/Day";
import SelectTags from "./Pages/SelectTags/SelectTags";
import Details from "./Pages/Details/Details";

import Header from "./components/Header/Header";
import MainContent from "./components/MainContent/MainContent";
import Footer from "./components/Footer/Footer";

import './index.css';


const App = () => {
  const location = useLocation();
  const isSignupPage = ["/signup", "/login"].includes(location.pathname);

  return (
    <div className={styles.app}>
      {!isSignupPage && <Header />}

      <div className={styles.content}>
        <main className={styles.main}>
          <Routes>
            <Route path="/" element={<Home/>} />
            <Route path="/MainContent" element={<MainContent/>}/>

            <Route path="/login" element={<Auth/>}/>
            <Route path="/signup" element={<Auth/>}/>
            
            <Route path="/day/:id" element={<Day/>}/>
            <Route path="/selectTags" element={<SelectTags/>}/>
            <Route path="/details/:id" element={<Details/>}/>
          </Routes>
        </main>
      </div>

      {!isSignupPage && <Footer />}
    </div>
  );
};

export default App;
