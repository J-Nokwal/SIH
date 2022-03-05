import React from "react";
import routes from "./Studentroutes.js";
import { Route, Switch } from "react-router-dom";
const Student = () => {
  return (
    <div>
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
  );
};

export default Student;
