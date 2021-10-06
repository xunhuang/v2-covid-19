import React from 'react';

import { useInfoSummaryByCountyFipsQuery, useInfoSummaryByStateFipsQuery } from '../generated/graphql';

enum Highlight {
  COUNTY,
  STATE,
  US,
}
type InfoTypebyCountyProps = {
  county_fips_code: string;
  highlight: Highlight;
};
const InfoTabByCounty = ({
  county_fips_code,
  highlight,
}: InfoTypebyCountyProps) => {
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
        {countyConfirmed}, {countyName} {highlight === Highlight.COUNTY && "**"}
      </li>
      <li>
        {stateConfirmed}, {stateName}
        {highlight === Highlight.STATE && "**"}
      </li>
      <li>
        {usConfirmed}, {USName} {highlight === Highlight.US && "**"}
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
      highlight={Highlight.STATE}
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
    return (
      <InfoTabByCounty
        county_fips_code={county_fips_code}
        highlight={Highlight.COUNTY}
      />
    );
  }
  if (state_fips_code) {
    return <InfoTabByState state_fips_code={state_fips_code} />;
  }
  return (
    <InfoTabByCounty
      county_fips_code="06001"
      highlight={Highlight.US}
    ></InfoTabByCounty>
  );
};
