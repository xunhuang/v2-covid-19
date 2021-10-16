import React from 'react';

import { AppTabs } from '../components/AppTab';
import { FullDiv } from '../styles/HomeStyles';
import { InfoTab } from './InfoTab';
import { UsCasesGraph } from './UsCasesGraph';
import { UsDailyGraph } from './USDailyGraph';
import { UsHospitalizationGraph } from './USHopitalizationGraph';
import { USStateCasesCapita } from './USStatesCaseCapita';
import { USStateCasesTable } from './USStatesCaseTable';
import { USStateTestingTable } from './USStatesTestingTable';
import { USSubRegions } from './USSubRegions';
import { USTestingGraphs } from './USTestingGraph';
import { UsVaccinationGraph } from './USVaccinationGraph';

export function USTableTabs() {
  return (
    <AppTabs
      tabs={[
        ["Cases", <USStateCasesTable />],
        ["Captia", <USStateCasesCapita />],
        ["Testing", <USStateTestingTable />],
      ]}
    />
  );
}

export function USGraphTabs() {
  document.title = `US COVID-19 Information`;
  return (
    <AppTabs
      tabs={[
        ["At-a-glance", <UsCasesGraph />],
        ["Daily", <UsDailyGraph />],
        ["Sub Regions", <USSubRegions />],
        ["Vaccination", <UsVaccinationGraph />],
        ["Hospitalization", <UsHospitalizationGraph />],
        ["Testing", <USTestingGraphs />],
      ]}
    />
  );
}

export const USPage = () => {
  return (
    <FullDiv>
      <InfoTab />
      <USGraphTabs />
      <USTableTabs />
    </FullDiv>
  );
};
