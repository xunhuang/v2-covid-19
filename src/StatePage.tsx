import { useParams } from 'react-router-dom';

import { AppTabs } from './components/AppTab';
import {
  CountySummaryView,
  StatesHospitalization,
  StatesTesting,
  StateSummaryView,
  useStateByFipsDetailsQuery,
} from './generated/graphql';
import { CasesGraph, CasesObject } from './USPage/CasesGraph';
import { InfoTab } from './USPage/InfoTab';
import { StateCountiesCapitaTable, StateCountiesCasesTable } from './USPage/StateCountiesCaseTable';
import { StateHospitalizationGraph } from './USPage/StateHospitalizationGraph';
import { StateSubRegions } from './USPage/StateSubRegions';
import { StateTestingGraphs } from './USPage/StateTestingGraph';
import { StateVaccinationGraph } from './USPage/StateVaccination';

export const StatePage = () => {
  const { state_fips_code } = useParams<{ state_fips_code: string }>();
  const { data, loading } = useStateByFipsDetailsQuery({
    variables: {
      state_fips_code: state_fips_code,
    },
  });

  // not very proud of this but, hey, 1 query to rule to all...
  const state = data?.allStateSummaryViews
    ?.nodes[0] as unknown as StateSummaryView;
  const cases = data?.allStateSummaryViews?.nodes[0]?.cases
    .nodes as unknown as Array<CasesObject>;
  const counties = data?.allStateSummaryViews?.nodes[0]?.countiesTable
    .nodes as unknown as Array<CountySummaryView>;
  const hospitalization = data?.allStateSummaryViews?.nodes[0]?.hospitalization
    .nodes as unknown as Array<StatesHospitalization>;
  const testing = data?.allStateSummaryViews?.nodes[0]?.testing
    .nodes as unknown as Array<StatesTesting>;

  if (loading) {
    return <div> loading </div>;
  }
  return (
    <div>
      <InfoTab state_fips_code={state_fips_code} />
      <AppTabs
        tabs={[
          ["Cases", <CasesGraph cases={cases} />],
          ["Sub Regions", <StateSubRegions state={state} />],
          ["Vaccination", <StateVaccinationGraph state={state} />],
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
          ["Cases", <StateCountiesCasesTable countiesTable={counties} />],
          ["Capita", <StateCountiesCapitaTable countiesTable={counties} />],
        ]}
      />
    </div>
  );
};
