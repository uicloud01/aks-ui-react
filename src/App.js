import logo from './logo.svg';
import './App.css';
import React, { useEffect, useState } from "react";
import { BrowserRouter as Router, Route, Switch, Link } from 'react-router-dom';
import LatestTimeUpdate from './LatestTimeUpdate';

function App() {
  

  return (
    <Router>
      <div className="App">
        <nav>
          <ul>
            <li><Link to="/">Home</Link></li>
            <li><Link to="/sample">Another page</Link></li>
          </ul>
        </nav>
      <LatestTimeUpdate/>
      </div>
    </Router>
  );
}

const Home = props => (<div>Home</div>);
const AnotherPage = props => (<div>Another page</div>)

export default App;
