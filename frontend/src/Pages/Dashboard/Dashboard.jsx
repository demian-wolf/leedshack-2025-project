import React from "react";

import Details  from "../Details/Details";
import Checklist from "../../components/Checklist/Checklist";

import styles from "./Dashboard.module.css";

export const Dashboard = () => {
    return (
        <div>
            <Details/>
            <Checklist/>
        </div>
    );
}
