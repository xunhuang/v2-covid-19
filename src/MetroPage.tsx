import { useParams } from 'react-router-dom';

import { AppTabs } from './components/AppTab';
import { CountySummaryView, useMsaDetailsByMsaIdQuery } from './generated/graphql';
import { CasesGraph, CasesObject } from './USPage/CasesGraph';
import { DailyGraph } from './USPage/CountyDailyGraph';
import { InfoTab } from './USPage/InfoTab';
import { MsaSubRegions } from './USPage/MsaSubRegions';
import { StateCountiesCapitaTable, StateCountiesCasesTable } from './USPage/StateCountiesCaseTable';

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

  const msa = data?.allMsaSummaryViews?.nodes[0];
  const cases = data?.allMsaSummaryViews?.nodes[0]?.msaCasesAllsByMsaId
    .nodes as CasesObject[];

  const countyTables = data?.allMsaSummaryViews?.nodes[0]
    ?.countySummaryViewsByMsaId.nodes as Array<CountySummaryView>;

  document.title = `${msa?.msaName} COVID-19 Information`;

  return (
    <div>
      <InfoTab msa_id={msa_id} />
      <AppTabs
        tabs={[
          ["At-A-Glance", <CasesGraph cases={cases} />],
          ["Daily", <DailyGraph cases={cases} />],
          ["Sub-Region", <MsaSubRegions msaId={msa_id} />],
          // ["Compare", <CountyCompareGraph county={county} />],
          // ["Vaccination", <CountyVaccinationGraph county={county} />],
        ]}
      />
      <AppTabs
        tabs={[
          [
            data?.allMsaSummaryViews?.nodes[0]?.msaName!,
            <StateCountiesCasesTable
              countiesTable={countyTables as CasesObject[]}
            />,
          ],
          [
            "Capita",
            <StateCountiesCapitaTable
              countiesTable={countyTables as CasesObject[]}
            />,
          ],
        ]}
      />
    </div>
  );
};
