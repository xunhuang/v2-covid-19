import { useParams } from 'react-router-dom';

import { AppTabs } from './components/AppTab';
import { CountySummaryView, useMsaDetailsByMsaIdQuery } from './generated/graphql';
import { CasesGraph, CasesObject } from './USPage/CasesGraph';
import { DailyGraph } from './USPage/CountyDailyGraph';
import { InfoTab } from './USPage/InfoTab';
import { StateCountiesCasesTable } from './USPage/StateCountiesCaseTable';

export const MetroPage = () => {
  const { msa_id } = useParams<{ msa_id: string }>();
  const { data, loading } = useMsaDetailsByMsaIdQuery({
    variables: {
      msaId: msa_id,
    },
  });

  if (loading) {
    return <div> loading </div>;
  }

  const cases = data?.allMsaSummaryViews?.nodes[0]?.msaCasesAllsByMsaId
    .nodes as CasesObject[];

  const countyTables = data?.allMsaSummaryViews?.nodes[0]
    ?.countySummaryViewsByMsaId.nodes as Array<CountySummaryView>;

  /*
  const county = data?.summary?.nodes[0] as unknown as CountySummaryView;
  

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
    */

  return (
    <div>
      <InfoTab msa_id={msa_id} />
      <AppTabs
        tabs={[
          ["At-A-Glance", <CasesGraph cases={cases} />],
          ["Daily", <DailyGraph cases={cases} />],
          // ["Compare", <CountyCompareGraph county={county} />],
          // ["Vaccination", <CountyVaccinationGraph county={county} />],
        ]}
      />
      <AppTabs
        tabs={[
          [
            data?.allMsaSummaryViews?.nodes[0]?.msaName!,
            <StateCountiesCasesTable countiesTable={countyTables} />,
          ],
        ]}
      />
    </div>
  );
};
