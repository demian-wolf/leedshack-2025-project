import React from "react";

import styles from "./Monday.module.css";
import { getImageUrl } from "../../utils";

export const Monday = () => {
    return( <div className={styles.maincontainer} >
            <div className={styles.navbar}>
            <a className= {styles.title} href="">Mealio</a>
            
            </div>
            <div className={styles.aboutsection}>
                <h1 className={styles.dayofweek}>SUNDAY!</h1>
                < p classname={styles.textday}>It's the first day of the week! Let's plan ahead to insure you live a happy and healthy week. </p>

                <h1 className={styles.gettingrecipe}>Don't Know What to Make?</h1>
                <p className={styles.clickmybtn}>Click the generate button below to find new and unique recipe to make! </p>
                <button className={styles.submitbtn} type="generate" >Generate!
               
                </button>
            </div>
    
            <div className={styles.bottomsection}>
               <h1>Fun fact: Healthy Consistent Eating Can Make You Happier</h1> 
               
            </div>
        
        </div>
    
        
    
        )
    };