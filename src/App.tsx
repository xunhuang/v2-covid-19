import React from "react";
import "./App.css";
// import { ExampleGraph } from "./components/AdvanceGraph";
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
import { USSubRegions } from "./USSubRegions";
import { UsDailyGraph } from "./USDailyGraph";
import { UsHospitalizationGraph } from "./USHopitalizationGraph";
import { UsTestingEffortGraph, USTestingGraphs } from "./USTestingGraph";

export interface IApplicationProps {}
function TabPanel(props: any) {
  const { children, value, index, ...other } = props;
  return <div {...other}>{value === index && <Box p={3}>{children}</Box>}</div>;
}

export function USTableTabs() {
  const [value, setValue] = React.useState(0);
  const handleChange = (event: any, newValue: number) => {
    setValue(newValue);
  };
  return (
    <>
      <AppBar position="static">
        <Tabs value={value} onChange={handleChange}>
          <Tab label="Cases" />
          <Tab label="Capita" />
          <Tab label="Testing" />
        </Tabs>
      </AppBar>
      <TabPanel value={value} index={0}>
        <USStateCasesTable />
      </TabPanel>
      <TabPanel value={value} index={1}>
        <USStateCasesCapita />
      </TabPanel>
      <TabPanel value={value} index={2}>
        <USStateTestingTable />
      </TabPanel>
    </>
  );
}
export function USGraphTabs() {
  const [value, setValue] = React.useState(0);
  const handleChange = (event: any, newValue: number) => {
    setValue(newValue);
  };
  return (
    <>
      <AppBar position="static">
        <Tabs value={value} onChange={handleChange}>
          <Tab label="Daily" />
          <Tab label="Cases" />
          <Tab label="Sub-Regions" />
          <Tab label="Hospitalization" />
          <Tab label="Testing" />
        </Tabs>
      </AppBar>
      <TabPanel value={value} index={0}>
        <UsDailyGraph />
      </TabPanel>
      <TabPanel value={value} index={1}>
        <UsCasesGraph />
      </TabPanel>
      <TabPanel value={value} index={2}>
        <USSubRegions />
      </TabPanel>
      <TabPanel value={value} index={3}>
        <UsHospitalizationGraph />
      </TabPanel>
      <TabPanel value={value} index={4}>
        <USTestingGraphs />
      </TabPanel>
    </>
  );
}

const App: React.FunctionComponent<IApplicationProps> = (props) => {
  return (
    <div className="App">
      <header className="App-header">
        <FullDiv>
          <USGraphTabs />
        </FullDiv>
        <USTableTabs />
      </header>
    </div>
  );
};

export default App;
