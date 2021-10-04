import './App.css';

import React from 'react';

import { USPage } from './USPage/USPage';

export interface IApplicationProps {}
const App: React.FunctionComponent<IApplicationProps> = (props) => {
  return (
    <div className="App">
      <header className="App-header">
        <USPage />
      </header>
    </div>
  );
};

export default App;
