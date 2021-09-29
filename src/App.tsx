import React from "react";
import "./App.css";
import {
  useStatesQuery,
  StatesQuery,
  useStateByFipsQuery,
} from "./generated/graphql";

export interface IApplicationProps {}

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
        {loading && <div>loading</div>}
        {data && <QueryResultComponent result={data} />}
      </header>
    </div>
  );
};

export default App;
