import React from 'react';

import { AppTabs } from '../components/AppTab';
import { useInfoSummaryByCountyFipsQuery, useInfoSummaryByStateFipsQuery } from '../generated/graphql';
import { FullDiv } from '../styles/HomeStyles';
import { UsCasesGraph } from './UsCasesGraph';
import { UsDailyGraph } from './USDailyGraph';
import { UsHospitalizationGraph } from './USHopitalizationGraph';
import { USStateCasesCapita } from './USStatesCaseCapita';
import { USStateCasesTable } from './USStatesCaseTable';
import { USStateTestingTable } from './USStatesTestingTable';
import { USSubRegions } from './USSubRegions';
import { USTestingGraphs } from './USTestingGraph';

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
  return (
    <AppTabs
      tabs={[
        ["Daily", <UsDailyGraph />],
        ["Cases", <UsCasesGraph />],
        ["Sub Regions", <USSubRegions />],
        ["Hospitalization", <UsHospitalizationGraph />],
        ["Testing", <USTestingGraphs />],
      ]}
    />
  );
}

type InfoTypeProps = {
  county_fips_code: string;
};

const InfoTab = ({ county_fips_code }: InfoTypeProps) => {
  const { data, loading } = useInfoSummaryByCountyFipsQuery({
    variables: {
      county_fips_code: county_fips_code,
    },
  });
  if (loading) return null;

  const countyName = data?.allCountySummaryViews?.nodes[0]?.countyName;
  const countyConfirmed = data?.allCountySummaryViews?.nodes[0]?.confirmedCases;

  const stateName =
    data?.allCountySummaryViews?.nodes[0]?.fipsCodeStateByStateFipsCode
      ?.stateSummaryViewsByStateFipsCode.nodes[0]?.stateName;

  const stateConfirmed =
    data?.allCountySummaryViews?.nodes[0]?.fipsCodeStateByStateFipsCode
      ?.stateSummaryViewsByStateFipsCode.nodes[0]?.confirmedCases;

  const USName = "United Systems";
  const usConfirmed = data?.allUsSummaryViews?.nodes[0]?.confirmedCases;
  return (
    <ol>
      <li>
        {countyConfirmed}, {countyName}
      </li>
      <li>
        {stateConfirmed}, {stateName}
      </li>
      <li>
        {usConfirmed}, {USName}
      </li>
    </ol>
  );
};

type InfoTypeByStateProps = {
  state_fips_code: string;
};

export const InfoTabByState = ({ state_fips_code }: InfoTypeByStateProps) => {
  const { data, loading } = useInfoSummaryByStateFipsQuery({
    variables: {
      state_fips_code: state_fips_code,
    },
  });
  if (loading) return null;
  return (
    <InfoTab
      county_fips_code={data?.allCountySummaryViews?.nodes[0]?.countyFipsCode!}
    ></InfoTab>
  );
};

export const USPage = () => {
  return (
    <>
      <InfoTab county_fips_code="06001"></InfoTab>
      <FullDiv>
        <USGraphTabs />
      </FullDiv>
      <USTableTabs />
    </>
  );
};
