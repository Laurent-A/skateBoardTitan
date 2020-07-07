import React, { Component } from 'react';
import Header from './components/Header/index';
import Body from './components/Body/index';
import 'bootstrap/dist/css/bootstrap.min.css';
import './App.css';

class App extends Component {
  render() {
    return (
      <div id="app">
        <Header />
        <Body />
      </div>
    )
  }
}

export default App;
