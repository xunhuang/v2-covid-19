import Cookies from 'js-cookie';
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

interface LastCountyCookieType {
  county_fips_code: string;
  state_fips_code: string;
}

const LastCountyCookieName = "LAST_COUNTY_VISITED";
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
    data?.allCountySummaryViews?.nodes[0]?.stateSummaryViewByStateFipsCode
      ?.stateName;
  const state_fips_code =
    data?.allCountySummaryViews?.nodes[0]?.stateSummaryViewByStateFipsCode
      ?.stateFipsCode;

  const stateConfirmed =
    data?.allCountySummaryViews?.nodes[0]?.stateSummaryViewByStateFipsCode
      ?.confirmedCases;

  const stateConfirmedIncreased =
    data?.allCountySummaryViews?.nodes[0]?.stateSummaryViewByStateFipsCode
      ?.confirmedIncrease;

  const USName = "United States";
  const usConfirmed = data?.allUsSummaryViews?.nodes[0]?.confirmedCases;
  const usConfirmedIncreased =
    data?.allUsSummaryViews?.nodes[0]?.confirmedIncrease;

  Cookies.set(
    LastCountyCookieName,
    JSON.stringify({
      county_fips_code,
      state_fips_code,
    })
  );

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
          routeTo: `/state/${state_fips_code}`,
          title: stateName!,
          mainMetric: myShortNumber(stateConfirmed!),
          mainMini: "+" + myShortNumber(stateConfirmedIncreased!),
          footer: "confirmed",
          selected: highlight === Highlight.STATE,
        },
        {
          routeTo: `/US`,
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

function getLastCountyCookie(): null | LastCountyCookieType {
  const cache = Cookies.get(LastCountyCookieName);
  if (cache == null) return null;
  return JSON.parse(cache) as LastCountyCookieType;
}

export const InfoTabByState = ({ state_fips_code }: InfoTypeByStateProps) => {
  var desiredCounty: null | string;
  const cacheCounty = getLastCountyCookie();
  const { data } = useInfoSummaryByStateFipsQuery({
    variables: {
      state_fips_code: state_fips_code,
    },
  });

  if (
    cacheCounty &&
    cacheCounty.county_fips_code &&
    cacheCounty.state_fips_code === state_fips_code
  ) {
    desiredCounty = cacheCounty.county_fips_code;
  } else {
    desiredCounty = data?.allCountySummaryViews?.nodes[0]?.countyFipsCode!;
  }

  return desiredCounty ? (
    <InfoTabByCounty
      county_fips_code={desiredCounty!}
      highlight={Highlight.STATE}
    ></InfoTabByCounty>
  ) : (
    <> </>
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

  const cacheCounty = getLastCountyCookie();

  const derived_county_fips_code =
    cacheCounty && cacheCounty.county_fips_code
      ? cacheCounty.county_fips_code
      : "06001";

  // nothing is selected so default to Alameda, CA
  return (
    <InfoTabByCounty
      county_fips_code={derived_county_fips_code}
      highlight={Highlight.US}
    ></InfoTabByCounty>
  );
};
