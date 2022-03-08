import React from "react";
import ReactDOM from "react-dom";
import "./index.css";

import reportWebVitals from "./reportWebVitals";
import Home from "./views/Home/Home";
import { BrowserRouter, Route, Switch, Redirect } from "react-router-dom";
import LoginPage from "./views/Home/Government/LoginPage/LoginPage";
import LoginPage1 from "./views/Home/University/LoginPage/LoginPage";
import Govt from "./views/Home/Government/Govt";
import University from "./views/Home/University/University";
ReactDOM.render(
  <div
    style={{
      fontFamily: "'Barlow', sans-serif",
      fontFamily: "'Fira Sans', sans-serif",
      fontFamily: "'Fredoka', sans-serif",
      fontFamily: "'Montserrat', sans-serif",
    }}
  >
    <BrowserRouter>
      <Switch>
        <Route exact path="/home" component={Home} />
        <Route exact path="/govtlogin" component={LoginPage} />
        <Route exact path="/unilogin" component={LoginPage1} />
        <Route path="/govt" component={Govt} />
        <Route path="/uni" component={University} />
        <Redirect exact from="/" to="/home" />
      </Switch>
    </BrowserRouter>
  </div>,
  document.getElementById("root")
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
