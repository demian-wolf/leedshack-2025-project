import React from "react";

import styles from "./Home.module.css";
import { getImageUrl } from "../../utils";

export const Home = () => {
    return( <div className={styles.maincontainer} >
        <div className={styles.navbar}>
        <a className= {styles.title} href="">Mealio</a>
        <div className={styles.menu}>
            
            <ul className={styles.menuItems}>
                <li><a href="/monday">Monday</a></li>
                <li><a href="/tuesday">Tuesday</a></li>
                <li><a href="/wednesday">Wednesday</a></li>
                <li><a href="/thursday">Thursday</a></li>
                <li><a href="/friday">Friday</a></li>
                <li><a href="/saturday">Saturday</a></li>
                <li><a href="/sunday">Sunday</a></li>
            </ul>
        </div>
        </div>
        <div className={styles.aboutsection}>
            <h1>About</h1>
            <p>Mealio is an innovative application designed to improve students' physical and mental health by incentivizing healthy eating habits. One of the biggest challenges students face is deciding what to cook, often leading to unhealthy choices or skipping meals altogether. Mealio simplifies this process by providing personalized meal recommendations based on individual dietary requirements, ensuring students receive balanced and nutritious meals without the hassle of meal planning.

            By logging their meals throughout the day, users actively track their eating habits, creating a sense of accountability and motivation to maintain a healthier lifestyle. To reinforce positive behavior, Mealio features a progress tree that visually grows as users log meals, symbolizing their personal growth in both physical and mental well-being. This gamified approach not only makes healthy eating more engaging but also encourages consistency in meal tracking.

            The combination of personalized recommendations and an interactive progress system helps reduce decision fatigue, promote mindful eating, and establish long-term healthy habits. Additionally, proper nutrition has been proven to enhance cognitive function, reduce stress, and improve energy levels—all crucial for students managing academic workloads. With Mealio, students not only nourish their bodies but also cultivate a sustainable and rewarding approach to wellness.</p>
        </div>

        <div className={styles.bottomsection}>
           <h1>Click On One Of The Days Of The Week To Get Started!</h1> 
        </div>
    
    </div>


    )
};