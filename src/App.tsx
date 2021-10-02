import React from "react";
import "./App.css";
// import { ExampleGraph } from "./components/AdvanceGraph";
// import { QueryResultExample } from "./QueryResultExample";
import { FullDiv } from "./styles/HomeStyles";
import { UsCasesGraph } from "./UsCasesGraph";

export interface IApplicationProps {}

const App: React.FunctionComponent<IApplicationProps> = (props) => {
  return (
    <div className="App">
      <header className="App-header">
        <FullDiv>
          <UsCasesGraph />
        </FullDiv>
        {/* <FullDiv>
          <ExampleGraph></ExampleGraph>
        </FullDiv> */}
        {/* <QueryResultExample /> */}
      </header>
    </div>
  );
};

export default App;
