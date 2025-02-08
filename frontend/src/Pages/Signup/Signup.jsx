import React from "react";

import styles from "./Signup.module.css";
import { getImageUrl } from "../../utils";


export const Signup = () => {
    return( <div>
        <a className= {styles.title} href="">Mealio</a>
        <div className={styles.container}>
        <form action="">
        <div className={styles.box}>
            <h2 className={styles.header}>Sign Up</h2>
            <p className={styles.maintext}>Please fill in your details to create and account</p>

            <div className={styles.emailbox}>
            <label htmlFor="email"><b>Email:</b></label>
            <input type="text" placeholder="Enter Email" name="email" required />
            </div>

            <div className={styles.passwordbox}>
            <label htmlFor="psw"><b>Password:</b></label>
            <input type="password" placeholder="Enter Password" name="psw" required />
            </div>

            <p className={styles.terms}>By creating an account you agree to our <a href="#"
            styles="color:dodgerblue">Terms & Privacy</a>.</p>

            <div className={styles.mybuttons}>
                <button className={styles.cancelbtn} type="button"
                onclick="document.getElementById('id01').style.display='none'" 
                class="cancelbtn">Cancel

                </button>
                <button className={styles.submitbtn} type="submit" class="signup">Sign Up

                </button>
            </div>

        </div>
    </form>
    </div>
    </div>

    );

};