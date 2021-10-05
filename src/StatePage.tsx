import React from 'react';
import { useParams } from 'react-router-dom';

import {
    CountySummaryView,
    FipsCodeState,
    StateCasesAllsConnection,
    StatesHospitalization,
    useStateByFipsDetailsQuery,
} from './generated/graphql';
import { StateCasesGraph } from './USPage/StateCasesGraph';
import { StateCountiesCapitaTable, StateCountiesCasesTable } from './USPage/StateCountiesCaseTable';
import { StateHospitalizationGraph } from './USPage/StateHospitalizationGraph';

export type StatePageMainProp = {
  state: FipsCodeState;
};

const StatePageMain = ({ state }: StatePageMainProp) => {
  console.log(state);
  return (
    <div>
      {state.stateName} + {state.stateFipsCode} +{" "}
      {state.statePostalAbbreviation}
    </div>
  );
};

export const StatePage = () => {
  const { state_fips_code } = useParams<{ state_fips_code: string }>();
  const { data, loading } = useStateByFipsDetailsQuery({
    variables: {
      fips: state_fips_code,
    },
  });

  // not very proud of this but, hey, 1 query to rule to all...
  const state = data?.allFipsCodeStates?.nodes[0] as unknown as FipsCodeState;
  const cases = data?.allFipsCodeStates?.nodes[0]
    ?.cases as unknown as StateCasesAllsConnection;
  const counties = data?.allFipsCodeStates?.nodes[0]?.countiesTable
    .nodes as unknown as Array<CountySummaryView>;
  const hospitalization = data?.allFipsCodeStates?.nodes[0]?.hospitalization
    .nodes as unknown as Array<StatesHospitalization>;

  if (hospitalization) {
    console.log(hospitalization);
  }

  return (
    <div>
      {loading && <div> loading </div>}
      {state && (
        <StateHospitalizationGraph
          state={state!}
          hospitalization={hospitalization}
        />
      )}
      {state && <StateCasesGraph state={state!} cases={cases} />}
      {state && (
        <StateCountiesCasesTable state={state!} countiesTable={counties} />
      )}
      {state && (
        <StateCountiesCapitaTable state={state!} countiesTable={counties} />
      )}
    </div>
  );
};
