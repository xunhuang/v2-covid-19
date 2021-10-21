import { useParams } from 'react-router-dom';

import { AppTabs } from './components/AppTab';
import {
  CountySummaryView,
  StatesHospitalization,
  StatesTesting,
  StateSummaryView,
  useStateByAbbrFipsDetailsQuery,
  useStateByFipsDetailsQuery,
} from './generated/graphql';
import { CasesGraph, CasesObject } from './USPage/CasesGraph';
import { DailyGraph } from './USPage/CountyDailyGraph';
import { InfoTab } from './USPage/InfoTab';
import { StateCountiesCapitaTable, StateCountiesCasesTable } from './USPage/StateCountiesCaseTable';
import { StateHospitalizationGraph } from './USPage/StateHospitalizationGraph';
import { StateSubRegions } from './USPage/StateSubRegions';
import { StateTestingGraphs } from './USPage/StateTestingGraph';
import { StateVaccinationGraph } from './USPage/StateVaccination';

export const StatePage = () => {
  const { state_fips_code } = useParams<{ state_fips_code: string }>();
  if (state_fips_code.match(/[a-zA-Z]/)) {
    return <StatePageByAbbr state_abbr={state_fips_code} />;
  }
  return <StatePageByFips state_fips_code={state_fips_code} />;
};

type StatePageRenderProp = {
  state: StateSummaryView;
};

const CommonRender = ({ state }: StatePageRenderProp) => {
  console.log(state);
  const cases = state.stateCasesAllsByStateFipsCode
    .nodes as unknown as Array<CasesObject>;
  const counties = state.countySummaryViewsByStateFipsCode
    .nodes as unknown as Array<CountySummaryView>;
  const hospitalization = state.statesHospitalizationsByStateFipsCode
    .nodes as unknown as Array<StatesHospitalization>;
  const testing = state.statesTestingsByStateFipsCode
    .nodes as unknown as Array<StatesTesting>;

  document.title = `${state.stateName} COVID-19 Information`;

  return (
    <div>
      <InfoTab state_fips_code={state.stateFipsCode!} />
      <AppTabs
        tabs={[
          ["At-A-Glance", <CasesGraph cases={cases} />],
          ["Daily", <DailyGraph cases={cases} />],
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
          [
            state.stateName!,
            <StateCountiesCasesTable
              countiesTable={counties as CasesObject[]}
            />,
          ],
          [
            "Capita",
            <StateCountiesCapitaTable
              countiesTable={counties as CasesObject[]}
            />,
          ],
        ]}
      />
    </div>
  );
};

type StatePageByFipsProp = {
  state_fips_code: string;
};

export const StatePageByFips = ({ state_fips_code }: StatePageByFipsProp) => {
  const { data, loading } = useStateByFipsDetailsQuery({
    variables: {
      state_fips_code: state_fips_code,
    },
  });

  if (loading) {
    return <div> loading </div>;
  }

  const state = data?.allStateSummaryViews
    ?.nodes[0] as unknown as StateSummaryView;

  return <CommonRender state={state} />;
};

type StatePageByAbbrProp = {
  state_abbr: string;
};

export const StatePageByAbbr = ({ state_abbr }: StatePageByAbbrProp) => {
  const { data, loading } = useStateByAbbrFipsDetailsQuery({
    variables: {
      state_abbr: state_abbr,
    },
  });

  if (loading) {
    return <div> loading </div>;
  }

  const state = data?.allStateSummaryViews
    ?.nodes[0] as unknown as StateSummaryView;

  return <CommonRender state={state} />;
};