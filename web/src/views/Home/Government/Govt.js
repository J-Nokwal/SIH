import React, { useState, useEffect } from "react";
import routes from "./Govtroutes.js";
import DashboardHeader from "../../../components/DashboardHeader/DashboardHeader";
import { Route, Switch } from "react-router-dom";
import DashboardSidebar from "../../../components/DashboardSidebar/DashboardSidebar.jsx";
const Govt = () => {
  const [current, setCurrent] = useState(1);
  const [currentsub, setCurrentSub] = useState(1);
  return (
    <div className="bg-slate-300">
      {" "}
      <div className="mt-0 md:pl-250 absolute contents md:block hidden w-full bg-white">
        <DashboardHeader profileImage={""} name={"Chitragupta"} />
      </div>
      <div className="hidden md:block bg-white ">
        <DashboardSidebar routes={routes} />
      </div>
      <div className="absolute top-124 " style={{ marginLeft: "300px" }}>
        <Switch>
          {routes.map((prop, key) => {
            return (
              <Route
                exact
                path={prop.layout + prop.path}
                component={prop.component}
                key={key}
              />
            );
          })}
        </Switch>
      </div>
    </div>
  );
};

export default Govt;
