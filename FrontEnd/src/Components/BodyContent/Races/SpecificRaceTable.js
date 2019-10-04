import React, { Component } from "react";
import Table from "react-bootstrap/Table";

export default class SpecificRaceTable extends Component {
  componentDidMount() {
    console.log("Race: " + this.props.raceToShow);
  }
  componentDidUpdate() {
    console.log("Race: " + this.props.raceToShow);
  }
  render() {
    return (
      <Table striped bordered hover size="sm">
        <thead>
          <tr>
            <th>#</th>
            <th>Horse</th>
            <th>Jockey</th>
            <th>Last race</th>
            <th>Odds</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>1</td>
            <td>Lucky Charm</td>
            <td>John Stone</td>
            <td>3rd, 2019-09-14</td>
            <td>4:1</td>
          </tr>
          <tr>
            <td>2</td>
            <td>Ginger Roadster</td>
            <td>Gordon Scott</td>
            <td>DNF, 2019-09-14</td>
            <td>12:1</td>
          </tr>
          <tr>
            <td>3</td>
            <td>Blue Star</td>
            <td>Silvia von Carlton</td>
            <td>1st, 2019-09-14</td>
            <td>1:1</td>
          </tr>
        </tbody>
      </Table>
    );
  }
}
