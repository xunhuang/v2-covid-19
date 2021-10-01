import React from "react";
import "./App.css";
import { AdvancedGraph } from "./components/AdvanceGraph";
import { DataSeries } from "./components/DataSeries";
import {
  useStatesQuery,
  StatesQuery,
  useStateByFipsQuery,
} from "./generated/graphql";
import Rechart from "./Rechart";
import { FullDiv } from "./styles/HomeStyles";

export interface IApplicationProps {}

const chartdata = [
  {
    name: "Nike",
    value: 90,
  },
  {
    name: "Adidas",
    value: 60,
  },
  {
    name: "New Balance",
    value: 114,
  },
];

// Props are typed according to GraphQL query
type QueryResultProp = {
  result: StatesQuery;
};

// Components are typed with props
const QueryResultComponent = ({ result }: QueryResultProp) => {
  console.log(result);
  const nodes = result.allFipsCodeStates?.nodes;
  return (
    <div>
      <p>Hello </p>
      {nodes?.map((state) => (
        <div>
          {state?.stateName}, {state?.statePostalAbbreviation},{" "}
          {state?.fipsCodeCountiesByStateFipsCode.nodes.length} Counties
        </div>
      ))}
    </div>
  );
};

const ExampleGraph = () => (
  <AdvancedGraph
    title="hey graph"
    serieses={[
      {
        series: new DataSeries("hello", [
          [1632891804, 20],
          [1632978204, 50],
          [1633039407, 100],
        ]),
        color: "red",
        // rightAxis: false,
        // covidspecial: true,
        // showMovingAverage: true,
      },
      {
        series: new DataSeries("world", [
          [1632891804, 10],
          [1632978204, 40],
          [1633039407, 110],
        ]),
        color: "blue",
        rightAxis: true,
        // covidspecial: true,
        // showMovingAverage: true,
      },
    ]}
  />
);

const App: React.FunctionComponent<IApplicationProps> = (props) => {
  const { data, loading } = useStatesQuery();
  const result = useStateByFipsQuery({
    variables: {
      fips: "06",
    },
  });
  console.log(result.data); // should have california only
  return (
    <div className="App">
      <header className="App-header">
        <Rechart data={chartdata} />
        <FullDiv>
          <ExampleGraph></ExampleGraph>
        </FullDiv>
        {loading && <div>loading</div>}
        {data && <QueryResultComponent result={data} />}
      </header>
    </div>
  );
};

export default App;
