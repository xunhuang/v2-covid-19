import React from 'react';
import { useParams } from 'react-router-dom';

import { AppTabs } from './components/AppTab';
import {
    CountySummaryView,
    FipsCodeState,
    StateCasesAllsConnection,
    StatesHospitalization,
    StatesTesting,
    useStateByFipsDetailsQuery,
} from './generated/graphql';
import { StateCasesGraph } from './USPage/StateCasesGraph';
import { StateCountiesCapitaTable, StateCountiesCasesTable } from './USPage/StateCountiesCaseTable';
import { StateHospitalizationGraph } from './USPage/StateHospitalizationGraph';
import { StateSubRegions } from './USPage/StateSubRegions';
import { StateTestingGraphs } from './USPage/StateTestingGraph';

export type StatePageMainProp = {
  state: FipsCodeState;
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
  const testing = data?.allFipsCodeStates?.nodes[0]?.testing
    .nodes as unknown as Array<StatesTesting>;

  if (loading) {
    return <div> loading </div>;
  }
  return (
    <div>
      <AppTabs
        tabs={[
          ["Cases", <StateCasesGraph state={state!} cases={cases} />],
          ["Sub Regions", <StateSubRegions state={state} />],
          ["Testing", <StateTestingGraphs state={state!} testing={testing} />],
          [
            "Hospitalization",
            <StateHospitalizationGraph
              state={state!}
              hospitalization={hospitalization}
            />,
          ],
        ]}
      />
      <AppTabs
        tabs={[
          [
            "Cases",
            <StateCountiesCasesTable state={state!} countiesTable={counties} />,
          ],
          [
            "Capita",
            <StateCountiesCapitaTable
              state={state!}
              countiesTable={counties}
            />,
          ],
        ]}
      />
    </div>
  );
};
