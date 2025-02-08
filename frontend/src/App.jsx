import React from "react";
import styles from './App.module.css';
import {Route, Routes} from "react-router-dom";
import {Signup} from "./Pages/Signup/Signup";


const App = () => {
  return (
    <div className={styles.app}>

        <Routes>
          <Route path="/" element={<Signup/>} />
        </Routes>

    </div>
  );
}

export default App;

