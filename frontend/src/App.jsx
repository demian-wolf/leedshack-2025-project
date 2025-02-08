import React from "react";
import styles from './App.module.css';
import {Route, Routes} from "react-router-dom";
import {Signup} from "./Pages/Signup/Signup";
import {Home} from "./Pages/Home/Home";
import {Monday} from "./Pages/Monday/Monday";


const App = () => {
  return (
    <div className={styles.app}>

        <Routes>
        
          <Route path="/" element={<Monday/>}/>
          <Route path="/" element={<Home/>} />
          
          <Route path="/" element={<Signup/>} />
          
        </Routes>

    </div>
  );
}

export default App;

