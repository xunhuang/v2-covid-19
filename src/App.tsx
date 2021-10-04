import React from "react";
import "./App.css";
// import { ExampleGraph } from "./components/AdvanceGraph";
// import { QueryResultExample } from "./QueryResultExample";
import { FullDiv } from "./styles/HomeStyles";
import { UsCasesGraph } from "./UsCasesGraph";
import { USStateCasesTable } from "./USStatesCaseTable";


// import React from "react";
import AppBar from "@material-ui/core/AppBar";
import Tabs from "@material-ui/core/Tabs";
import Tab from "@material-ui/core/Tab";
import Box from "@material-ui/core/Box";
import { USStateCasesCapita } from "./USStatesCaseCapita";
import { USStateTestingTable } from "./USStatesTestingTable";

export interface IApplicationProps {}
function TabPanel(props:any) {
  const { children, value, index, ...other } = props;
  return <div {...other}>{value === index && <Box p={3}>{children}</Box>}</div>;
}
export function App1() {
  const [value, setValue] = React.useState(0);
  const handleChange = (event:any, newValue:number) => {
    setValue(newValue);
  };
  return (
    <>
      <AppBar position="static">
        <Tabs value={value} onChange={handleChange}>
          <Tab label="Item One" wrapped />
          <Tab label="Item Two" />
          <Tab label="Item Three" />
        </Tabs>
      </AppBar>
      <TabPanel value={value} index={0}>
        Item One
        <USStateCasesTable />
      </TabPanel>
      <TabPanel value={value} index={1}>
        Item Two
        <USStateCasesCapita />
      </TabPanel>
      <TabPanel value={value} index={2}>
        Item Three
        <USStateTestingTable />
      </TabPanel>
    </>
  );
}

const App: React.FunctionComponent<IApplicationProps> = (props) => {
  return (
    <div className="App">
      <header className="App-header">
        <App1/>
        <FullDiv>
          <UsCasesGraph />
        </FullDiv>
        {/* <FullDiv>
          <ExampleGraph></ExampleGraph>
        </FullDiv> */}
        {/* <QueryResultExample /> */}

        <USStateCasesTable />
      </header>
    </div>
  );
};

export default App;
