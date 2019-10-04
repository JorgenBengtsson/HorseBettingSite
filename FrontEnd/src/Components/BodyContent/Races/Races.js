import React, { Component } from "react";

import MainRacesTable from "./MainRacesTable";
import SpecificRaceTable from "./SpecificRaceTable";

export default class Races extends Component {
  constructor(props) {
    super(props);
    this.state = { selectedRace: 0 };
  }
  render() {
    return (
      <>
        <MainRacesTable
          selectedRace={id => this.setState({ selectedRace: id })}
        />
        <SpecificRaceTable raceToShow={this.state.selectedRace} />
      </>
    );
  }
}
