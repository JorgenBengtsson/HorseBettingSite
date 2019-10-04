import React, { Component } from "react";

import Header from "./Header";
import Body from "./Body";
import Footer from "./Footer";
import Home from "./../BodyContent/Home";
import Races from "./../BodyContent/Races";
import Registration from "./../BodyContent/Registration";
import Profile from "./../BodyContent/Profile";

export default class Page extends Component {
  render() {
    return (
      <div>
        <Header />
        <Body pageToDisplay="Home">
          <Home title="Home" />
          <Races title="Races" />
          <Registration title="Registration" />
          <Profile title="Profile" />
        </Body>
        <Footer />
      </div>
    );
  }
}
