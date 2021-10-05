import React from 'react';

import { useInfoSummaryByCountyFipsQuery, useInfoSummaryByStateFipsQuery } from '../generated/graphql';

type InfoTypebyCountyProps = {
  county_fips_code: string;
};
const InfoTabByCounty = ({ county_fips_code }: InfoTypebyCountyProps) => {
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
    <InfoTabByCounty
      county_fips_code={data?.allCountySummaryViews?.nodes[0]?.countyFipsCode!}
    ></InfoTabByCounty>
  );
};
type InfoTabProps = {
  county_fips_code?: string;
  state_fips_code?: string;
};

export const InfoTab = ({
  county_fips_code,
  state_fips_code,
}: InfoTabProps) => {
  if (county_fips_code) {
    return <InfoTabByCounty county_fips_code={county_fips_code} />;
  }
  if (state_fips_code) {
    return <InfoTabByState state_fips_code={state_fips_code} />;
  }
  return <InfoTabByCounty county_fips_code="06001"></InfoTabByCounty>;
};
