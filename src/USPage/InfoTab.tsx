import React from 'react';

import { myShortNumber } from '../components/AdvanceGraph';
import { useInfoSummaryByCountyFipsQuery, useInfoSummaryByStateFipsQuery } from '../generated/graphql';
import { USInfoTopWidget } from './USInfoBoxRender';

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
  const countyConfirmedIncreased =
    data?.allCountySummaryViews?.nodes[0]?.confirmedIncrease;

  const stateName =
    data?.allCountySummaryViews?.nodes[0]?.fipsCodeStateByStateFipsCode
      ?.stateSummaryViewsByStateFipsCode.nodes[0]?.stateName;
  const state_fips_code =
    data?.allCountySummaryViews?.nodes[0]?.fipsCodeStateByStateFipsCode
      ?.stateSummaryViewsByStateFipsCode.nodes[0]?.stateFipsCode;

  const stateConfirmed =
    data?.allCountySummaryViews?.nodes[0]?.fipsCodeStateByStateFipsCode
      ?.stateSummaryViewsByStateFipsCode.nodes[0]?.confirmedCases;

  const stateConfirmedIncreased =
    data?.allCountySummaryViews?.nodes[0]?.fipsCodeStateByStateFipsCode
      ?.stateSummaryViewsByStateFipsCode.nodes[0]?.confirmedIncrease;

  const USName = "United States";
  const usConfirmed = data?.allUsSummaryViews?.nodes[0]?.confirmedCases;
  const usConfirmedIncreased =
    data?.allUsSummaryViews?.nodes[0]?.confirmedIncrease;
  return (
    <USInfoTopWidget
      tags={[
        {
          routeTo: `/county/${county_fips_code}`,
          title: countyName!,
          mainMetric: myShortNumber(countyConfirmed!),
          mainMini: "+" + myShortNumber(countyConfirmedIncreased!),
          footer: "confirmed",
          selected: highlight === Highlight.COUNTY,
        },
        {
          routeTo: `/State/${state_fips_code}`,
          title: stateName!,
          mainMetric: myShortNumber(stateConfirmed!),
          mainMini: "+" + myShortNumber(stateConfirmedIncreased!),
          footer: "confirmed",
          selected: highlight === Highlight.STATE,
        },
        {
          routeTo: `/`,
          title: USName,
          mainMetric: myShortNumber(usConfirmed!),
          mainMini: "+" + myShortNumber(usConfirmedIncreased!),
          footer: "confirmed",
          selected: highlight === Highlight.US,
        },
      ]}
    />
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

  // nothing is selected so default to Alameda, CA
  return (
    <InfoTabByCounty
      county_fips_code="06001"
      highlight={Highlight.US}
    ></InfoTabByCounty>
  );
};
