import { useParams } from 'react-router-dom';

import { AppTabs } from './components/AppTab';
import { CountyCasesAll, CountySummaryView, FipsCodeState, useCountyDetailsByCountyFipsQuery } from './generated/graphql';
import { CountyCasesGraph } from './USPage/CountyCasesGraph';
import { CountyDailyGraph } from './USPage/CountyDailyGraph';
import { InfoTab } from './USPage/InfoTab';

export type StatePageMainProp = {
  state: FipsCodeState;
};

export const CountyPage = () => {
  const { county_fips_code } = useParams<{ county_fips_code: string }>();
  const { data, loading } = useCountyDetailsByCountyFipsQuery({
    variables: {
      county_fips_code: county_fips_code,
    },
  });

  // // not very proud of this but, hey, 1 query to rule to all...
  // const state = data?.allFipsCodeStates?.nodes[0] as unknown as FipsCodeState;
  // const cases = data?.allFipsCodeStates?.nodes[0]
  //   ?.cases as unknown as StateCasesAllsConnection;
  // const counties = data?.allFipsCodeStates?.nodes[0]?.countiesTable
  //   .nodes as unknown as Array<CountySummaryView>;
  // const hospitalization = data?.allFipsCodeStates?.nodes[0]?.hospitalization
  //   .nodes as unknown as Array<StatesHospitalization>;
  // const testing = data?.allFipsCodeStates?.nodes[0]?.testing
  //   .nodes as unknown as Array<StatesTesting>;

  const county = data?.summary?.nodes[0] as unknown as CountySummaryView;
  const cases = data?.cases?.nodes as unknown as Array<CountyCasesAll>;
  //   ?.cases as unknown as StateCasesAllsConnection;

  if (loading) {
    return <div> loading </div>;
  }
  return (
    <div>
      <InfoTab county_fips_code={county_fips_code} />
      <AppTabs
        tabs={[
          ["At-A-Glance", <CountyCasesGraph county={county} cases={cases} />],
          ["Daily", <CountyDailyGraph county={county} cases={cases} />],
          // ["Sub Regions", <StateSubRegions state={state} />],
          // ["Testing", <StateTestingGraphs state={state!} testing={testing} />],
          // [
          //   "Hospitalization",
          //   <StateHospitalizationGraph
          //     state={state!}
          //     hospitalization={hospitalization}
          //   />,
          // ],
        ]}
      />

      {/* <AppTabs
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
      /> */}
    </div>
  );
};
