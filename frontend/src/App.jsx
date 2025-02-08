import React from "react";
import styles from './App.module.css';

import {Signup} from "./Pages/Signup/Signup";


const App = () => {
  const location = useLocation();   

  const isSignupPage = location.pathname === "/signup";

  return (
    <div className={styles.app}>
      {!isSignupPage && <Header />}

      <div className={styles.content}>
        {!isSignupPage && <Sidebar />}

        <Routes>
          <Route path="/" element={<Signup/>} />
        </Routes>

        {!isSignupPage && <Footer />}
      </div>
    </div>
  );
};

export default App;
