import { getDistance } from 'geolib';
import { useParams } from 'react-router-dom';

import { AppTabs } from './components/AppTab';
import { CountySummaryView, useCountyDetailsByCountyFipsQuery } from './generated/graphql';
import { CasesGraph, CasesObject } from './USPage/CasesGraph';
import { CountyCompareGraph } from './USPage/CountyCompareGraph';
import { DailyGraph } from './USPage/CountyDailyGraph';
import { CountyVaccinationGraph } from './USPage/CountyVaccinationGraph';
import { InfoTab } from './USPage/InfoTab';
import { StateCountiesCasesTable } from './USPage/StateCountiesCaseTable';

export const CountyPage = () => {
  const { county_fips_code } = useParams<{ county_fips_code: string }>();
  const { data, loading } = useCountyDetailsByCountyFipsQuery({
    variables: {
      county_fips_code: county_fips_code,
    },
  });
  if (loading) {
    return <div> loading </div>;
  }

  const county = data?.summary?.nodes[0] as unknown as CountySummaryView;
  const cases = data?.cases?.nodes as unknown as Array<CasesObject>;
  const countyTables = data?.countiesInstate?.nodes[0]
    ?.stateSummaryViewByStateFipsCode?.countySummaryViewsByStateFipsCode
    .nodes as Array<CountySummaryView>;

  const longitude = data?.countiesInstate?.nodes[0]?.longitude;
  const latitude = data?.countiesInstate?.nodes[0]?.latitude;
  const table = countyTables ? [...countyTables] : null;
  const nearby = table
    ?.sort((a, b) => {
      const dist_a = getDistance(
        { longitude: longitude || 0, latitude: latitude || 0 },
        { longitude: a.longitude || 0, latitude: a.latitude || 0 }
      );
      const dist_b = getDistance(
        { longitude: longitude || 0, latitude: latitude || 0 },
        { longitude: b.longitude || 0, latitude: b.latitude || 0 }
      );
      return dist_a - dist_b;
    })
    .slice(0, 10);

  return (
    <div>
      <InfoTab county_fips_code={county_fips_code} />
      <AppTabs
        tabs={[
          ["At-A-Glance", <CasesGraph cases={cases} />],
          ["Daily", <DailyGraph cases={cases} />],
          ["Compare", <CountyCompareGraph county={county} />],
          ["Vaccination", <CountyVaccinationGraph county={county} />],
        ]}
      />

      <AppTabs
        tabs={[
          [
            "Nearby Counties",
            <StateCountiesCasesTable countiesTable={nearby!} />,
          ],
        ]}
      />
    </div>
  );
};
