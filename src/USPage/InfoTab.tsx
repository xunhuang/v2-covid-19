import React from 'react';

import { myShortNumber } from '../components/AdvanceGraph';
import {
  useInfoSummaryByCountyFipsQuery,
  useInfoSummaryByStateFipsQuery,
  useMsaCountyDetailsByMsaIdQuery,
} from '../generated/graphql';
import { getLastCountyLocation, setLastCountyLocation } from './LastCountyLocation';
import { TagProps, USInfoTopWidget } from './USInfoBoxRender';

enum Highlight {
  COUNTY,
  MSA,
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

  setLastCountyLocation({
    county_fips_code,
    state_fips_code: state_fips_code!,
    msa_id:
      data?.allCountySummaryViews?.nodes[0]?.msaSummaryViewByMsaId?.msaId ||
      undefined,
  });

  const tags: TagProps[] = [];
  tags.push({
    routeTo: `/county/${county_fips_code}`,
    title: countyName!,
    mainMetric: myShortNumber(countyConfirmed!),
    mainMini: "+" + myShortNumber(countyConfirmedIncreased!),
    footer: "confirmed",
    selected: highlight === Highlight.COUNTY,
  });

  if (data?.allCountySummaryViews?.nodes[0]?.msaSummaryViewByMsaId) {
    const msa = data?.allCountySummaryViews?.nodes[0]?.msaSummaryViewByMsaId!;
    tags.push({
      routeTo: `/metro/${msa.msaId}`,
      title: msa.msaName!,
      mainMetric: myShortNumber(msa.confirmedCases!),
      mainMini: "+" + myShortNumber(msa.confirmedIncrease!),
      footer: "confirmed",
      selected: highlight === Highlight.MSA,
    });
  }
  tags.push(
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
    }
  );

  return <USInfoTopWidget tags={tags} />;
};

type InfoTypeByStateProps = {
  state_fips_code: string;
};

type InfoTypeByMsaProps = {
  msa_id: string;
};

export const InfoTabByMsa = ({ msa_id }: InfoTypeByMsaProps) => {
  var desiredCounty: null | string;
  const cacheCounty = getLastCountyLocation();

  const { data } = useMsaCountyDetailsByMsaIdQuery({
    variables: {
      msaId: msa_id,
    },
  });

  if (cacheCounty && cacheCounty?.msa_id === msa_id) {
    desiredCounty = cacheCounty.county_fips_code;
  } else {
    desiredCounty =
      data?.allMsaSummaryViews?.nodes[0]?.countySummaryViewsByMsaId!.nodes[0]
        ?.countyFipsCode!;
  }

  return desiredCounty ? (
    <InfoTabByCounty
      county_fips_code={desiredCounty!}
      highlight={Highlight.MSA}
    ></InfoTabByCounty>
  ) : (
    <> loading</>
  );
};

export const InfoTabByState = ({ state_fips_code }: InfoTypeByStateProps) => {
  var desiredCounty: null | string;
  const cacheCounty = getLastCountyLocation();
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
  msa_id?: string;
};

export const InfoTab = ({
  county_fips_code,
  state_fips_code,
  msa_id,
}: InfoTabProps) => {
  if (county_fips_code) {
    return (
      <InfoTabByCounty
        county_fips_code={county_fips_code}
        highlight={Highlight.COUNTY}
      />
    );
  }

  if (msa_id) {
    return <InfoTabByMsa msa_id={msa_id} />;
  }

  if (state_fips_code) {
    return <InfoTabByState state_fips_code={state_fips_code} />;
  }

  const cacheCounty = getLastCountyLocation();

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
