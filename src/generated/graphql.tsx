import { gql } from '@apollo/client';
import * as Apollo from '@apollo/client';
export type Maybe<T> = T | null;
export type Exact<T extends { [key: string]: unknown }> = { [K in keyof T]: T[K] };
export type MakeOptional<T, K extends keyof T> = Omit<T, K> & { [SubKey in K]?: Maybe<T[SubKey]> };
export type MakeMaybe<T, K extends keyof T> = Omit<T, K> & { [SubKey in K]: Maybe<T[SubKey]> };
const defaultOptions =  {}
/** All built-in and custom scalars, mapped to their actual values */
export type Scalars = {
  ID: string;
  String: string;
  Boolean: boolean;
  Int: number;
  Float: number;
  /** A location in a connection that can be used for resuming pagination. */
  Cursor: any;
};

/** A connection to a list of `CountiesSummary` values. */
export type CountiesSummariesConnection = {
  __typename?: 'CountiesSummariesConnection';
  /** A list of edges which contains the `CountiesSummary` and cursor to aid in pagination. */
  edges: Array<CountiesSummariesEdge>;
  /** A list of `CountiesSummary` objects. */
  nodes: Array<Maybe<CountiesSummary>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  /** The count of *all* `CountiesSummary` you could get from the connection. */
  totalCount: Scalars['Int'];
};

/** A `CountiesSummary` edge in the connection. */
export type CountiesSummariesEdge = {
  __typename?: 'CountiesSummariesEdge';
  /** A cursor for use in pagination. */
  cursor?: Maybe<Scalars['Cursor']>;
  /** The `CountiesSummary` at the end of the edge. */
  node?: Maybe<CountiesSummary>;
};

/** Methods to use when ordering `CountiesSummary`. */
export enum CountiesSummariesOrderBy {
  CommunityAsc = 'COMMUNITY_ASC',
  CommunityDesc = 'COMMUNITY_DESC',
  ConfirmedCasesAsc = 'CONFIRMED_CASES_ASC',
  ConfirmedCasesDesc = 'CONFIRMED_CASES_DESC',
  CountyAsc = 'COUNTY_ASC',
  CountyDesc = 'COUNTY_DESC',
  CountyFipsCodeAsc = 'COUNTY_FIPS_CODE_ASC',
  CountyFipsCodeDesc = 'COUNTY_FIPS_CODE_DESC',
  DeathsAsc = 'DEATHS_ASC',
  DeathsDesc = 'DEATHS_DESC',
  HealthwebsitesAsc = 'HEALTHWEBSITES_ASC',
  HealthwebsitesDesc = 'HEALTHWEBSITES_DESC',
  Natural = 'NATURAL',
  Positivity_7DayAvgAsc = 'POSITIVITY_7DAY_AVG_ASC',
  Positivity_7DayAvgDesc = 'POSITIVITY_7DAY_AVG_DESC',
  ReportDateAsc = 'REPORT_DATE_ASC',
  ReportDateDesc = 'REPORT_DATE_DESC',
  SchoolAsc = 'SCHOOL_ASC',
  SchoolDesc = 'SCHOOL_DESC',
  StateAsc = 'STATE_ASC',
  StateDesc = 'STATE_DESC',
  StateFipsCodeAsc = 'STATE_FIPS_CODE_ASC',
  StateFipsCodeDesc = 'STATE_FIPS_CODE_DESC',
  Test_7DayTotalAsc = 'TEST_7DAY_TOTAL_ASC',
  Test_7DayTotalDesc = 'TEST_7DAY_TOTAL_DESC'
}

export type CountiesSummary = {
  __typename?: 'CountiesSummary';
  community?: Maybe<Scalars['String']>;
  confirmedCases?: Maybe<Scalars['Int']>;
  county?: Maybe<Scalars['String']>;
  countyFipsCode?: Maybe<Scalars['String']>;
  deaths?: Maybe<Scalars['Int']>;
  /** Reads a single `FipsCodeCounty` that is related to this `CountiesSummary`. */
  fipsCodeCountyByCountyFipsCode?: Maybe<FipsCodeCounty>;
  /** Reads a single `FipsCodeState` that is related to this `CountiesSummary`. */
  fipsCodeStateByStateFipsCode?: Maybe<FipsCodeState>;
  healthwebsites?: Maybe<Scalars['String']>;
  positivity7DayAvg?: Maybe<Scalars['Float']>;
  reportDate?: Maybe<Scalars['String']>;
  school?: Maybe<Scalars['String']>;
  state?: Maybe<Scalars['String']>;
  stateFipsCode?: Maybe<Scalars['String']>;
  test7DayTotal?: Maybe<Scalars['Int']>;
};

/**
 * A condition to be used against `CountiesSummary` object types. All fields are
 * tested for equality and combined with a logical ‘and.’
 */
export type CountiesSummaryCondition = {
  /** Checks for equality with the object’s `community` field. */
  community?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `confirmedCases` field. */
  confirmedCases?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `county` field. */
  county?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `countyFipsCode` field. */
  countyFipsCode?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `deaths` field. */
  deaths?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `healthwebsites` field. */
  healthwebsites?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `positivity7DayAvg` field. */
  positivity7DayAvg?: Maybe<Scalars['Float']>;
  /** Checks for equality with the object’s `reportDate` field. */
  reportDate?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `school` field. */
  school?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `state` field. */
  state?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `stateFipsCode` field. */
  stateFipsCode?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `test7DayTotal` field. */
  test7DayTotal?: Maybe<Scalars['Int']>;
};

/** An input for mutations affecting `CountiesSummary` */
export type CountiesSummaryInput = {
  community?: Maybe<Scalars['String']>;
  confirmedCases?: Maybe<Scalars['Int']>;
  county?: Maybe<Scalars['String']>;
  countyFipsCode?: Maybe<Scalars['String']>;
  deaths?: Maybe<Scalars['Int']>;
  healthwebsites?: Maybe<Scalars['String']>;
  positivity7DayAvg?: Maybe<Scalars['Float']>;
  reportDate?: Maybe<Scalars['String']>;
  school?: Maybe<Scalars['String']>;
  state?: Maybe<Scalars['String']>;
  stateFipsCode?: Maybe<Scalars['String']>;
  test7DayTotal?: Maybe<Scalars['Int']>;
};

export type CountyCasesAll = {
  __typename?: 'CountyCasesAll';
  confirmedCases?: Maybe<Scalars['Int']>;
  county?: Maybe<Scalars['String']>;
  countyFipsCode?: Maybe<Scalars['String']>;
  date?: Maybe<Scalars['String']>;
  deaths?: Maybe<Scalars['Int']>;
  /** Reads a single `FipsCodeCounty` that is related to this `CountyCasesAll`. */
  fipsCodeCountyByCountyFipsCode?: Maybe<FipsCodeCounty>;
  /** Reads a single `FipsCodeState` that is related to this `CountyCasesAll`. */
  fipsCodeStateByStateFipsCode?: Maybe<FipsCodeState>;
  stateFipsCode?: Maybe<Scalars['String']>;
  stateName?: Maybe<Scalars['String']>;
};

/**
 * A condition to be used against `CountyCasesAll` object types. All fields are
 * tested for equality and combined with a logical ‘and.’
 */
export type CountyCasesAllCondition = {
  /** Checks for equality with the object’s `confirmedCases` field. */
  confirmedCases?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `county` field. */
  county?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `countyFipsCode` field. */
  countyFipsCode?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `date` field. */
  date?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `deaths` field. */
  deaths?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `stateFipsCode` field. */
  stateFipsCode?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `stateName` field. */
  stateName?: Maybe<Scalars['String']>;
};

/** An input for mutations affecting `CountyCasesAll` */
export type CountyCasesAllInput = {
  confirmedCases?: Maybe<Scalars['Int']>;
  county?: Maybe<Scalars['String']>;
  countyFipsCode?: Maybe<Scalars['String']>;
  date?: Maybe<Scalars['String']>;
  deaths?: Maybe<Scalars['Int']>;
  stateFipsCode?: Maybe<Scalars['String']>;
  stateName?: Maybe<Scalars['String']>;
};

/** A connection to a list of `CountyCasesAll` values. */
export type CountyCasesAllsConnection = {
  __typename?: 'CountyCasesAllsConnection';
  /** A list of edges which contains the `CountyCasesAll` and cursor to aid in pagination. */
  edges: Array<CountyCasesAllsEdge>;
  /** A list of `CountyCasesAll` objects. */
  nodes: Array<Maybe<CountyCasesAll>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  /** The count of *all* `CountyCasesAll` you could get from the connection. */
  totalCount: Scalars['Int'];
};

/** A `CountyCasesAll` edge in the connection. */
export type CountyCasesAllsEdge = {
  __typename?: 'CountyCasesAllsEdge';
  /** A cursor for use in pagination. */
  cursor?: Maybe<Scalars['Cursor']>;
  /** The `CountyCasesAll` at the end of the edge. */
  node?: Maybe<CountyCasesAll>;
};

/** Methods to use when ordering `CountyCasesAll`. */
export enum CountyCasesAllsOrderBy {
  ConfirmedCasesAsc = 'CONFIRMED_CASES_ASC',
  ConfirmedCasesDesc = 'CONFIRMED_CASES_DESC',
  CountyAsc = 'COUNTY_ASC',
  CountyDesc = 'COUNTY_DESC',
  CountyFipsCodeAsc = 'COUNTY_FIPS_CODE_ASC',
  CountyFipsCodeDesc = 'COUNTY_FIPS_CODE_DESC',
  DateAsc = 'DATE_ASC',
  DateDesc = 'DATE_DESC',
  DeathsAsc = 'DEATHS_ASC',
  DeathsDesc = 'DEATHS_DESC',
  Natural = 'NATURAL',
  StateFipsCodeAsc = 'STATE_FIPS_CODE_ASC',
  StateFipsCodeDesc = 'STATE_FIPS_CODE_DESC',
  StateNameAsc = 'STATE_NAME_ASC',
  StateNameDesc = 'STATE_NAME_DESC'
}

export type CountyPopulation = {
  __typename?: 'CountyPopulation';
  countyFipsCode?: Maybe<Scalars['String']>;
  /** Reads a single `FipsCodeCounty` that is related to this `CountyPopulation`. */
  fipsCodeCountyByCountyFipsCode?: Maybe<FipsCodeCounty>;
  /** Reads a single `FipsCodeState` that is related to this `CountyPopulation`. */
  fipsCodeStateByStateFipsCode?: Maybe<FipsCodeState>;
  pop2020?: Maybe<Scalars['Int']>;
  stateFipsCode?: Maybe<Scalars['String']>;
};

/**
 * A condition to be used against `CountyPopulation` object types. All fields are
 * tested for equality and combined with a logical ‘and.’
 */
export type CountyPopulationCondition = {
  /** Checks for equality with the object’s `countyFipsCode` field. */
  countyFipsCode?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `pop2020` field. */
  pop2020?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `stateFipsCode` field. */
  stateFipsCode?: Maybe<Scalars['String']>;
};

/** An input for mutations affecting `CountyPopulation` */
export type CountyPopulationInput = {
  countyFipsCode?: Maybe<Scalars['String']>;
  pop2020?: Maybe<Scalars['Int']>;
  stateFipsCode?: Maybe<Scalars['String']>;
};

/** A connection to a list of `CountyPopulation` values. */
export type CountyPopulationsConnection = {
  __typename?: 'CountyPopulationsConnection';
  /** A list of edges which contains the `CountyPopulation` and cursor to aid in pagination. */
  edges: Array<CountyPopulationsEdge>;
  /** A list of `CountyPopulation` objects. */
  nodes: Array<Maybe<CountyPopulation>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  /** The count of *all* `CountyPopulation` you could get from the connection. */
  totalCount: Scalars['Int'];
};

/** A `CountyPopulation` edge in the connection. */
export type CountyPopulationsEdge = {
  __typename?: 'CountyPopulationsEdge';
  /** A cursor for use in pagination. */
  cursor?: Maybe<Scalars['Cursor']>;
  /** The `CountyPopulation` at the end of the edge. */
  node?: Maybe<CountyPopulation>;
};

/** Methods to use when ordering `CountyPopulation`. */
export enum CountyPopulationsOrderBy {
  CountyFipsCodeAsc = 'COUNTY_FIPS_CODE_ASC',
  CountyFipsCodeDesc = 'COUNTY_FIPS_CODE_DESC',
  Natural = 'NATURAL',
  Pop2020Asc = 'POP2020_ASC',
  Pop2020Desc = 'POP2020_DESC',
  StateFipsCodeAsc = 'STATE_FIPS_CODE_ASC',
  StateFipsCodeDesc = 'STATE_FIPS_CODE_DESC'
}

export type CountySummaryView = {
  __typename?: 'CountySummaryView';
  confirmedCases?: Maybe<Scalars['Int']>;
  confirmedIncrease?: Maybe<Scalars['Int']>;
  countyFipsCode?: Maybe<Scalars['String']>;
  countyName?: Maybe<Scalars['String']>;
  deathIncrease?: Maybe<Scalars['Int']>;
  deaths?: Maybe<Scalars['Int']>;
  /** Reads a single `FipsCodeCounty` that is related to this `CountySummaryView`. */
  fipsCodeCountyByCountyFipsCode?: Maybe<FipsCodeCounty>;
  stateName?: Maybe<Scalars['String']>;
};

/**
 * A condition to be used against `CountySummaryView` object types. All fields are
 * tested for equality and combined with a logical ‘and.’
 */
export type CountySummaryViewCondition = {
  /** Checks for equality with the object’s `confirmedCases` field. */
  confirmedCases?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `confirmedIncrease` field. */
  confirmedIncrease?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `countyFipsCode` field. */
  countyFipsCode?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `countyName` field. */
  countyName?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `deathIncrease` field. */
  deathIncrease?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `deaths` field. */
  deaths?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `stateName` field. */
  stateName?: Maybe<Scalars['String']>;
};

/** A connection to a list of `CountySummaryView` values. */
export type CountySummaryViewsConnection = {
  __typename?: 'CountySummaryViewsConnection';
  /** A list of edges which contains the `CountySummaryView` and cursor to aid in pagination. */
  edges: Array<CountySummaryViewsEdge>;
  /** A list of `CountySummaryView` objects. */
  nodes: Array<Maybe<CountySummaryView>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  /** The count of *all* `CountySummaryView` you could get from the connection. */
  totalCount: Scalars['Int'];
};

/** A `CountySummaryView` edge in the connection. */
export type CountySummaryViewsEdge = {
  __typename?: 'CountySummaryViewsEdge';
  /** A cursor for use in pagination. */
  cursor?: Maybe<Scalars['Cursor']>;
  /** The `CountySummaryView` at the end of the edge. */
  node?: Maybe<CountySummaryView>;
};

/** Methods to use when ordering `CountySummaryView`. */
export enum CountySummaryViewsOrderBy {
  ConfirmedCasesAsc = 'CONFIRMED_CASES_ASC',
  ConfirmedCasesDesc = 'CONFIRMED_CASES_DESC',
  ConfirmedIncreaseAsc = 'CONFIRMED_INCREASE_ASC',
  ConfirmedIncreaseDesc = 'CONFIRMED_INCREASE_DESC',
  CountyFipsCodeAsc = 'COUNTY_FIPS_CODE_ASC',
  CountyFipsCodeDesc = 'COUNTY_FIPS_CODE_DESC',
  CountyNameAsc = 'COUNTY_NAME_ASC',
  CountyNameDesc = 'COUNTY_NAME_DESC',
  DeathsAsc = 'DEATHS_ASC',
  DeathsDesc = 'DEATHS_DESC',
  DeathIncreaseAsc = 'DEATH_INCREASE_ASC',
  DeathIncreaseDesc = 'DEATH_INCREASE_DESC',
  Natural = 'NATURAL',
  StateNameAsc = 'STATE_NAME_ASC',
  StateNameDesc = 'STATE_NAME_DESC'
}

/** All input for the create `CountiesSummary` mutation. */
export type CreateCountiesSummaryInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `CountiesSummary` to be created by this mutation. */
  countiesSummary: CountiesSummaryInput;
};

/** The output of our create `CountiesSummary` mutation. */
export type CreateCountiesSummaryPayload = {
  __typename?: 'CreateCountiesSummaryPayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `CountiesSummary` that was created by this mutation. */
  countiesSummary?: Maybe<CountiesSummary>;
  /** An edge for our `CountiesSummary`. May be used by Relay 1. */
  countiesSummaryEdge?: Maybe<CountiesSummariesEdge>;
  /** Reads a single `FipsCodeCounty` that is related to this `CountiesSummary`. */
  fipsCodeCountyByCountyFipsCode?: Maybe<FipsCodeCounty>;
  /** Reads a single `FipsCodeState` that is related to this `CountiesSummary`. */
  fipsCodeStateByStateFipsCode?: Maybe<FipsCodeState>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
};


/** The output of our create `CountiesSummary` mutation. */
export type CreateCountiesSummaryPayloadCountiesSummaryEdgeArgs = {
  orderBy?: Maybe<Array<CountiesSummariesOrderBy>>;
};

/** All input for the create `CountyCasesAll` mutation. */
export type CreateCountyCasesAllInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `CountyCasesAll` to be created by this mutation. */
  countyCasesAll: CountyCasesAllInput;
};

/** The output of our create `CountyCasesAll` mutation. */
export type CreateCountyCasesAllPayload = {
  __typename?: 'CreateCountyCasesAllPayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `CountyCasesAll` that was created by this mutation. */
  countyCasesAll?: Maybe<CountyCasesAll>;
  /** An edge for our `CountyCasesAll`. May be used by Relay 1. */
  countyCasesAllEdge?: Maybe<CountyCasesAllsEdge>;
  /** Reads a single `FipsCodeCounty` that is related to this `CountyCasesAll`. */
  fipsCodeCountyByCountyFipsCode?: Maybe<FipsCodeCounty>;
  /** Reads a single `FipsCodeState` that is related to this `CountyCasesAll`. */
  fipsCodeStateByStateFipsCode?: Maybe<FipsCodeState>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
};


/** The output of our create `CountyCasesAll` mutation. */
export type CreateCountyCasesAllPayloadCountyCasesAllEdgeArgs = {
  orderBy?: Maybe<Array<CountyCasesAllsOrderBy>>;
};

/** All input for the create `CountyPopulation` mutation. */
export type CreateCountyPopulationInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `CountyPopulation` to be created by this mutation. */
  countyPopulation: CountyPopulationInput;
};

/** The output of our create `CountyPopulation` mutation. */
export type CreateCountyPopulationPayload = {
  __typename?: 'CreateCountyPopulationPayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `CountyPopulation` that was created by this mutation. */
  countyPopulation?: Maybe<CountyPopulation>;
  /** An edge for our `CountyPopulation`. May be used by Relay 1. */
  countyPopulationEdge?: Maybe<CountyPopulationsEdge>;
  /** Reads a single `FipsCodeCounty` that is related to this `CountyPopulation`. */
  fipsCodeCountyByCountyFipsCode?: Maybe<FipsCodeCounty>;
  /** Reads a single `FipsCodeState` that is related to this `CountyPopulation`. */
  fipsCodeStateByStateFipsCode?: Maybe<FipsCodeState>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
};


/** The output of our create `CountyPopulation` mutation. */
export type CreateCountyPopulationPayloadCountyPopulationEdgeArgs = {
  orderBy?: Maybe<Array<CountyPopulationsOrderBy>>;
};

/** All input for the create `FipsCodeCounty` mutation. */
export type CreateFipsCodeCountyInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `FipsCodeCounty` to be created by this mutation. */
  fipsCodeCounty: FipsCodeCountyInput;
};

/** The output of our create `FipsCodeCounty` mutation. */
export type CreateFipsCodeCountyPayload = {
  __typename?: 'CreateFipsCodeCountyPayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `FipsCodeCounty` that was created by this mutation. */
  fipsCodeCounty?: Maybe<FipsCodeCounty>;
  /** An edge for our `FipsCodeCounty`. May be used by Relay 1. */
  fipsCodeCountyEdge?: Maybe<FipsCodeCountiesEdge>;
  /** Reads a single `FipsCodeState` that is related to this `FipsCodeCounty`. */
  fipsCodeStateByStateFipsCode?: Maybe<FipsCodeState>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
};


/** The output of our create `FipsCodeCounty` mutation. */
export type CreateFipsCodeCountyPayloadFipsCodeCountyEdgeArgs = {
  orderBy?: Maybe<Array<FipsCodeCountiesOrderBy>>;
};

/** All input for the create `FipsCodeState` mutation. */
export type CreateFipsCodeStateInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `FipsCodeState` to be created by this mutation. */
  fipsCodeState: FipsCodeStateInput;
};

/** The output of our create `FipsCodeState` mutation. */
export type CreateFipsCodeStatePayload = {
  __typename?: 'CreateFipsCodeStatePayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `FipsCodeState` that was created by this mutation. */
  fipsCodeState?: Maybe<FipsCodeState>;
  /** An edge for our `FipsCodeState`. May be used by Relay 1. */
  fipsCodeStateEdge?: Maybe<FipsCodeStatesEdge>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
};


/** The output of our create `FipsCodeState` mutation. */
export type CreateFipsCodeStatePayloadFipsCodeStateEdgeArgs = {
  orderBy?: Maybe<Array<FipsCodeStatesOrderBy>>;
};

/** All input for the create `MsaCasesAll` mutation. */
export type CreateMsaCasesAllInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `MsaCasesAll` to be created by this mutation. */
  msaCasesAll: MsaCasesAllInput;
};

/** The output of our create `MsaCasesAll` mutation. */
export type CreateMsaCasesAllPayload = {
  __typename?: 'CreateMsaCasesAllPayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `MsaCasesAll` that was created by this mutation. */
  msaCasesAll?: Maybe<MsaCasesAll>;
  /** An edge for our `MsaCasesAll`. May be used by Relay 1. */
  msaCasesAllEdge?: Maybe<MsaCasesAllsEdge>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
};


/** The output of our create `MsaCasesAll` mutation. */
export type CreateMsaCasesAllPayloadMsaCasesAllEdgeArgs = {
  orderBy?: Maybe<Array<MsaCasesAllsOrderBy>>;
};

/** All input for the create `MsaDefinition` mutation. */
export type CreateMsaDefinitionInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `MsaDefinition` to be created by this mutation. */
  msaDefinition: MsaDefinitionInput;
};

/** The output of our create `MsaDefinition` mutation. */
export type CreateMsaDefinitionPayload = {
  __typename?: 'CreateMsaDefinitionPayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** Reads a single `FipsCodeCounty` that is related to this `MsaDefinition`. */
  fipsCodeCountyByCountyFipsCode?: Maybe<FipsCodeCounty>;
  /** Reads a single `FipsCodeState` that is related to this `MsaDefinition`. */
  fipsCodeStateByStateFipsCode?: Maybe<FipsCodeState>;
  /** The `MsaDefinition` that was created by this mutation. */
  msaDefinition?: Maybe<MsaDefinition>;
  /** An edge for our `MsaDefinition`. May be used by Relay 1. */
  msaDefinitionEdge?: Maybe<MsaDefinitionsEdge>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
};


/** The output of our create `MsaDefinition` mutation. */
export type CreateMsaDefinitionPayloadMsaDefinitionEdgeArgs = {
  orderBy?: Maybe<Array<MsaDefinitionsOrderBy>>;
};

/** All input for the create `StateCasesAll` mutation. */
export type CreateStateCasesAllInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `StateCasesAll` to be created by this mutation. */
  stateCasesAll: StateCasesAllInput;
};

/** The output of our create `StateCasesAll` mutation. */
export type CreateStateCasesAllPayload = {
  __typename?: 'CreateStateCasesAllPayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** Reads a single `FipsCodeState` that is related to this `StateCasesAll`. */
  fipsCodeStateByStateFipsCode?: Maybe<FipsCodeState>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
  /** The `StateCasesAll` that was created by this mutation. */
  stateCasesAll?: Maybe<StateCasesAll>;
  /** An edge for our `StateCasesAll`. May be used by Relay 1. */
  stateCasesAllEdge?: Maybe<StateCasesAllsEdge>;
};


/** The output of our create `StateCasesAll` mutation. */
export type CreateStateCasesAllPayloadStateCasesAllEdgeArgs = {
  orderBy?: Maybe<Array<StateCasesAllsOrderBy>>;
};

/** All input for the create `StatePopulation` mutation. */
export type CreateStatePopulationInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `StatePopulation` to be created by this mutation. */
  statePopulation: StatePopulationInput;
};

/** The output of our create `StatePopulation` mutation. */
export type CreateStatePopulationPayload = {
  __typename?: 'CreateStatePopulationPayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** Reads a single `FipsCodeState` that is related to this `StatePopulation`. */
  fipsCodeStateByStateFipsCode?: Maybe<FipsCodeState>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
  /** The `StatePopulation` that was created by this mutation. */
  statePopulation?: Maybe<StatePopulation>;
  /** An edge for our `StatePopulation`. May be used by Relay 1. */
  statePopulationEdge?: Maybe<StatePopulationsEdge>;
};


/** The output of our create `StatePopulation` mutation. */
export type CreateStatePopulationPayloadStatePopulationEdgeArgs = {
  orderBy?: Maybe<Array<StatePopulationsOrderBy>>;
};

/** All input for the create `StatesHospitalization` mutation. */
export type CreateStatesHospitalizationInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `StatesHospitalization` to be created by this mutation. */
  statesHospitalization: StatesHospitalizationInput;
};

/** The output of our create `StatesHospitalization` mutation. */
export type CreateStatesHospitalizationPayload = {
  __typename?: 'CreateStatesHospitalizationPayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** Reads a single `FipsCodeState` that is related to this `StatesHospitalization`. */
  fipsCodeStateByStateFipsCode?: Maybe<FipsCodeState>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
  /** The `StatesHospitalization` that was created by this mutation. */
  statesHospitalization?: Maybe<StatesHospitalization>;
  /** An edge for our `StatesHospitalization`. May be used by Relay 1. */
  statesHospitalizationEdge?: Maybe<StatesHospitalizationsEdge>;
};


/** The output of our create `StatesHospitalization` mutation. */
export type CreateStatesHospitalizationPayloadStatesHospitalizationEdgeArgs = {
  orderBy?: Maybe<Array<StatesHospitalizationsOrderBy>>;
};

/** All input for the create `StatesSummary` mutation. */
export type CreateStatesSummaryInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `StatesSummary` to be created by this mutation. */
  statesSummary: StatesSummaryInput;
};

/** The output of our create `StatesSummary` mutation. */
export type CreateStatesSummaryPayload = {
  __typename?: 'CreateStatesSummaryPayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** Reads a single `FipsCodeState` that is related to this `StatesSummary`. */
  fipsCodeStateByStateFipsCode?: Maybe<FipsCodeState>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
  /** The `StatesSummary` that was created by this mutation. */
  statesSummary?: Maybe<StatesSummary>;
  /** An edge for our `StatesSummary`. May be used by Relay 1. */
  statesSummaryEdge?: Maybe<StatesSummariesEdge>;
};


/** The output of our create `StatesSummary` mutation. */
export type CreateStatesSummaryPayloadStatesSummaryEdgeArgs = {
  orderBy?: Maybe<Array<StatesSummariesOrderBy>>;
};

/** All input for the create `StatesTesting` mutation. */
export type CreateStatesTestingInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `StatesTesting` to be created by this mutation. */
  statesTesting: StatesTestingInput;
};

/** The output of our create `StatesTesting` mutation. */
export type CreateStatesTestingPayload = {
  __typename?: 'CreateStatesTestingPayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** Reads a single `FipsCodeState` that is related to this `StatesTesting`. */
  fipsCodeStateByStateFipsCode?: Maybe<FipsCodeState>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
  /** The `StatesTesting` that was created by this mutation. */
  statesTesting?: Maybe<StatesTesting>;
  /** An edge for our `StatesTesting`. May be used by Relay 1. */
  statesTestingEdge?: Maybe<StatesTestingsEdge>;
};


/** The output of our create `StatesTesting` mutation. */
export type CreateStatesTestingPayloadStatesTestingEdgeArgs = {
  orderBy?: Maybe<Array<StatesTestingsOrderBy>>;
};

/** All input for the create `UsCasesAll` mutation. */
export type CreateUsCasesAllInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `UsCasesAll` to be created by this mutation. */
  usCasesAll: UsCasesAllInput;
};

/** The output of our create `UsCasesAll` mutation. */
export type CreateUsCasesAllPayload = {
  __typename?: 'CreateUsCasesAllPayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
  /** The `UsCasesAll` that was created by this mutation. */
  usCasesAll?: Maybe<UsCasesAll>;
  /** An edge for our `UsCasesAll`. May be used by Relay 1. */
  usCasesAllEdge?: Maybe<UsCasesAllsEdge>;
};


/** The output of our create `UsCasesAll` mutation. */
export type CreateUsCasesAllPayloadUsCasesAllEdgeArgs = {
  orderBy?: Maybe<Array<UsCasesAllsOrderBy>>;
};

/** All input for the create `UsHospitalization` mutation. */
export type CreateUsHospitalizationInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `UsHospitalization` to be created by this mutation. */
  usHospitalization: UsHospitalizationInput;
};

/** The output of our create `UsHospitalization` mutation. */
export type CreateUsHospitalizationPayload = {
  __typename?: 'CreateUsHospitalizationPayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
  /** The `UsHospitalization` that was created by this mutation. */
  usHospitalization?: Maybe<UsHospitalization>;
  /** An edge for our `UsHospitalization`. May be used by Relay 1. */
  usHospitalizationEdge?: Maybe<UsHospitalizationsEdge>;
};


/** The output of our create `UsHospitalization` mutation. */
export type CreateUsHospitalizationPayloadUsHospitalizationEdgeArgs = {
  orderBy?: Maybe<Array<UsHospitalizationsOrderBy>>;
};

/** All input for the create `UsSummary` mutation. */
export type CreateUsSummaryInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `UsSummary` to be created by this mutation. */
  usSummary: UsSummaryInput;
};

/** The output of our create `UsSummary` mutation. */
export type CreateUsSummaryPayload = {
  __typename?: 'CreateUsSummaryPayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
  /** The `UsSummary` that was created by this mutation. */
  usSummary?: Maybe<UsSummary>;
  /** An edge for our `UsSummary`. May be used by Relay 1. */
  usSummaryEdge?: Maybe<UsSummariesEdge>;
};


/** The output of our create `UsSummary` mutation. */
export type CreateUsSummaryPayloadUsSummaryEdgeArgs = {
  orderBy?: Maybe<Array<UsSummariesOrderBy>>;
};

/** All input for the create `UsTesting` mutation. */
export type CreateUsTestingInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `UsTesting` to be created by this mutation. */
  usTesting: UsTestingInput;
};

/** The output of our create `UsTesting` mutation. */
export type CreateUsTestingPayload = {
  __typename?: 'CreateUsTestingPayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
  /** The `UsTesting` that was created by this mutation. */
  usTesting?: Maybe<UsTesting>;
  /** An edge for our `UsTesting`. May be used by Relay 1. */
  usTestingEdge?: Maybe<UsTestingsEdge>;
};


/** The output of our create `UsTesting` mutation. */
export type CreateUsTestingPayloadUsTestingEdgeArgs = {
  orderBy?: Maybe<Array<UsTestingsOrderBy>>;
};

/** All input for the `deleteFipsCodeCountyByCountyFipsCode` mutation. */
export type DeleteFipsCodeCountyByCountyFipsCodeInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  countyFipsCode: Scalars['String'];
};

/** All input for the `deleteFipsCodeCounty` mutation. */
export type DeleteFipsCodeCountyInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The globally unique `ID` which will identify a single `FipsCodeCounty` to be deleted. */
  nodeId: Scalars['ID'];
};

/** The output of our delete `FipsCodeCounty` mutation. */
export type DeleteFipsCodeCountyPayload = {
  __typename?: 'DeleteFipsCodeCountyPayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  deletedFipsCodeCountyId?: Maybe<Scalars['ID']>;
  /** The `FipsCodeCounty` that was deleted by this mutation. */
  fipsCodeCounty?: Maybe<FipsCodeCounty>;
  /** An edge for our `FipsCodeCounty`. May be used by Relay 1. */
  fipsCodeCountyEdge?: Maybe<FipsCodeCountiesEdge>;
  /** Reads a single `FipsCodeState` that is related to this `FipsCodeCounty`. */
  fipsCodeStateByStateFipsCode?: Maybe<FipsCodeState>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
};


/** The output of our delete `FipsCodeCounty` mutation. */
export type DeleteFipsCodeCountyPayloadFipsCodeCountyEdgeArgs = {
  orderBy?: Maybe<Array<FipsCodeCountiesOrderBy>>;
};

/** All input for the `deleteFipsCodeStateByStateFipsCode` mutation. */
export type DeleteFipsCodeStateByStateFipsCodeInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  stateFipsCode: Scalars['String'];
};

/** All input for the `deleteFipsCodeState` mutation. */
export type DeleteFipsCodeStateInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The globally unique `ID` which will identify a single `FipsCodeState` to be deleted. */
  nodeId: Scalars['ID'];
};

/** The output of our delete `FipsCodeState` mutation. */
export type DeleteFipsCodeStatePayload = {
  __typename?: 'DeleteFipsCodeStatePayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  deletedFipsCodeStateId?: Maybe<Scalars['ID']>;
  /** The `FipsCodeState` that was deleted by this mutation. */
  fipsCodeState?: Maybe<FipsCodeState>;
  /** An edge for our `FipsCodeState`. May be used by Relay 1. */
  fipsCodeStateEdge?: Maybe<FipsCodeStatesEdge>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
};


/** The output of our delete `FipsCodeState` mutation. */
export type DeleteFipsCodeStatePayloadFipsCodeStateEdgeArgs = {
  orderBy?: Maybe<Array<FipsCodeStatesOrderBy>>;
};

/** A connection to a list of `FipsCodeCounty` values. */
export type FipsCodeCountiesConnection = {
  __typename?: 'FipsCodeCountiesConnection';
  /** A list of edges which contains the `FipsCodeCounty` and cursor to aid in pagination. */
  edges: Array<FipsCodeCountiesEdge>;
  /** A list of `FipsCodeCounty` objects. */
  nodes: Array<Maybe<FipsCodeCounty>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  /** The count of *all* `FipsCodeCounty` you could get from the connection. */
  totalCount: Scalars['Int'];
};

/** A `FipsCodeCounty` edge in the connection. */
export type FipsCodeCountiesEdge = {
  __typename?: 'FipsCodeCountiesEdge';
  /** A cursor for use in pagination. */
  cursor?: Maybe<Scalars['Cursor']>;
  /** The `FipsCodeCounty` at the end of the edge. */
  node?: Maybe<FipsCodeCounty>;
};

/** Methods to use when ordering `FipsCodeCounty`. */
export enum FipsCodeCountiesOrderBy {
  AreaNameAsc = 'AREA_NAME_ASC',
  AreaNameDesc = 'AREA_NAME_DESC',
  ConsolidatedCityFipsCodeAsc = 'CONSOLIDATED_CITY_FIPS_CODE_ASC',
  ConsolidatedCityFipsCodeDesc = 'CONSOLIDATED_CITY_FIPS_CODE_DESC',
  CountyFipsCodeAsc = 'COUNTY_FIPS_CODE_ASC',
  CountyFipsCodeDesc = 'COUNTY_FIPS_CODE_DESC',
  CountySubdivisionFipsCodeAsc = 'COUNTY_SUBDIVISION_FIPS_CODE_ASC',
  CountySubdivisionFipsCodeDesc = 'COUNTY_SUBDIVISION_FIPS_CODE_DESC',
  Natural = 'NATURAL',
  PlaceFipsCodeAsc = 'PLACE_FIPS_CODE_ASC',
  PlaceFipsCodeDesc = 'PLACE_FIPS_CODE_DESC',
  PrimaryKeyAsc = 'PRIMARY_KEY_ASC',
  PrimaryKeyDesc = 'PRIMARY_KEY_DESC',
  StateFipsCodeAsc = 'STATE_FIPS_CODE_ASC',
  StateFipsCodeDesc = 'STATE_FIPS_CODE_DESC',
  SummaryLevelAsc = 'SUMMARY_LEVEL_ASC',
  SummaryLevelDesc = 'SUMMARY_LEVEL_DESC',
  SummaryLevelNameAsc = 'SUMMARY_LEVEL_NAME_ASC',
  SummaryLevelNameDesc = 'SUMMARY_LEVEL_NAME_DESC'
}

export type FipsCodeCounty = Node & {
  __typename?: 'FipsCodeCounty';
  areaName?: Maybe<Scalars['String']>;
  consolidatedCityFipsCode?: Maybe<Scalars['String']>;
  /** Reads and enables pagination through a set of `CountiesSummary`. */
  countiesSummariesByCountyFipsCode: CountiesSummariesConnection;
  /** Reads and enables pagination through a set of `CountyCasesAll`. */
  countyCasesAllsByCountyFipsCode: CountyCasesAllsConnection;
  countyFipsCode: Scalars['String'];
  /** Reads and enables pagination through a set of `CountyPopulation`. */
  countyPopulationsByCountyFipsCode: CountyPopulationsConnection;
  countySubdivisionFipsCode?: Maybe<Scalars['String']>;
  /** Reads and enables pagination through a set of `CountySummaryView`. */
  countySummaryViewsByCountyFipsCode: CountySummaryViewsConnection;
  /** Reads a single `FipsCodeState` that is related to this `FipsCodeCounty`. */
  fipsCodeStateByStateFipsCode?: Maybe<FipsCodeState>;
  /** Reads and enables pagination through a set of `MsaDefinition`. */
  msaDefinitionsByCountyFipsCode: MsaDefinitionsConnection;
  /** A globally unique identifier. Can be used in various places throughout the system to identify this single value. */
  nodeId: Scalars['ID'];
  placeFipsCode?: Maybe<Scalars['String']>;
  stateFipsCode?: Maybe<Scalars['String']>;
  summaryLevel?: Maybe<Scalars['String']>;
  summaryLevelName?: Maybe<Scalars['String']>;
};


export type FipsCodeCountyCountiesSummariesByCountyFipsCodeArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<CountiesSummaryCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<CountiesSummariesOrderBy>>;
};


export type FipsCodeCountyCountyCasesAllsByCountyFipsCodeArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<CountyCasesAllCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<CountyCasesAllsOrderBy>>;
};


export type FipsCodeCountyCountyPopulationsByCountyFipsCodeArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<CountyPopulationCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<CountyPopulationsOrderBy>>;
};


export type FipsCodeCountyCountySummaryViewsByCountyFipsCodeArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<CountySummaryViewCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<CountySummaryViewsOrderBy>>;
};


export type FipsCodeCountyMsaDefinitionsByCountyFipsCodeArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<MsaDefinitionCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<MsaDefinitionsOrderBy>>;
};

/**
 * A condition to be used against `FipsCodeCounty` object types. All fields are
 * tested for equality and combined with a logical ‘and.’
 */
export type FipsCodeCountyCondition = {
  /** Checks for equality with the object’s `areaName` field. */
  areaName?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `consolidatedCityFipsCode` field. */
  consolidatedCityFipsCode?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `countyFipsCode` field. */
  countyFipsCode?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `countySubdivisionFipsCode` field. */
  countySubdivisionFipsCode?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `placeFipsCode` field. */
  placeFipsCode?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `stateFipsCode` field. */
  stateFipsCode?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `summaryLevel` field. */
  summaryLevel?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `summaryLevelName` field. */
  summaryLevelName?: Maybe<Scalars['String']>;
};

/** An input for mutations affecting `FipsCodeCounty` */
export type FipsCodeCountyInput = {
  areaName?: Maybe<Scalars['String']>;
  consolidatedCityFipsCode?: Maybe<Scalars['String']>;
  countyFipsCode: Scalars['String'];
  countySubdivisionFipsCode?: Maybe<Scalars['String']>;
  placeFipsCode?: Maybe<Scalars['String']>;
  stateFipsCode?: Maybe<Scalars['String']>;
  summaryLevel?: Maybe<Scalars['String']>;
  summaryLevelName?: Maybe<Scalars['String']>;
};

/** Represents an update to a `FipsCodeCounty`. Fields that are set will be updated. */
export type FipsCodeCountyPatch = {
  areaName?: Maybe<Scalars['String']>;
  consolidatedCityFipsCode?: Maybe<Scalars['String']>;
  countyFipsCode?: Maybe<Scalars['String']>;
  countySubdivisionFipsCode?: Maybe<Scalars['String']>;
  placeFipsCode?: Maybe<Scalars['String']>;
  stateFipsCode?: Maybe<Scalars['String']>;
  summaryLevel?: Maybe<Scalars['String']>;
  summaryLevelName?: Maybe<Scalars['String']>;
};

export type FipsCodeState = Node & {
  __typename?: 'FipsCodeState';
  /** Reads and enables pagination through a set of `CountiesSummary`. */
  countiesSummariesByStateFipsCode: CountiesSummariesConnection;
  /** Reads and enables pagination through a set of `CountyCasesAll`. */
  countyCasesAllsByStateFipsCode: CountyCasesAllsConnection;
  /** Reads and enables pagination through a set of `CountyPopulation`. */
  countyPopulationsByStateFipsCode: CountyPopulationsConnection;
  /** Reads and enables pagination through a set of `FipsCodeCounty`. */
  fipsCodeCountiesByStateFipsCode: FipsCodeCountiesConnection;
  /** Reads and enables pagination through a set of `MsaDefinition`. */
  msaDefinitionsByStateFipsCode: MsaDefinitionsConnection;
  /** A globally unique identifier. Can be used in various places throughout the system to identify this single value. */
  nodeId: Scalars['ID'];
  /** Reads and enables pagination through a set of `StateCasesAll`. */
  stateCasesAllsByStateFipsCode: StateCasesAllsConnection;
  stateFipsCode: Scalars['String'];
  stateGnisid?: Maybe<Scalars['String']>;
  stateName?: Maybe<Scalars['String']>;
  /** Reads and enables pagination through a set of `StatePopulation`. */
  statePopulationsByStateFipsCode: StatePopulationsConnection;
  statePostalAbbreviation?: Maybe<Scalars['String']>;
  /** Reads and enables pagination through a set of `StateSummaryView`. */
  stateSummaryViewsByStateFipsCode: StateSummaryViewsConnection;
  /** Reads and enables pagination through a set of `StatesHospitalization`. */
  statesHospitalizationsByStateFipsCode: StatesHospitalizationsConnection;
  /** Reads and enables pagination through a set of `StatesSummary`. */
  statesSummariesByStateFipsCode: StatesSummariesConnection;
  /** Reads and enables pagination through a set of `StatesTesting`. */
  statesTestingsByStateFipsCode: StatesTestingsConnection;
};


export type FipsCodeStateCountiesSummariesByStateFipsCodeArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<CountiesSummaryCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<CountiesSummariesOrderBy>>;
};


export type FipsCodeStateCountyCasesAllsByStateFipsCodeArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<CountyCasesAllCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<CountyCasesAllsOrderBy>>;
};


export type FipsCodeStateCountyPopulationsByStateFipsCodeArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<CountyPopulationCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<CountyPopulationsOrderBy>>;
};


export type FipsCodeStateFipsCodeCountiesByStateFipsCodeArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<FipsCodeCountyCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<FipsCodeCountiesOrderBy>>;
};


export type FipsCodeStateMsaDefinitionsByStateFipsCodeArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<MsaDefinitionCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<MsaDefinitionsOrderBy>>;
};


export type FipsCodeStateStateCasesAllsByStateFipsCodeArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<StateCasesAllCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<StateCasesAllsOrderBy>>;
};


export type FipsCodeStateStatePopulationsByStateFipsCodeArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<StatePopulationCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<StatePopulationsOrderBy>>;
};


export type FipsCodeStateStateSummaryViewsByStateFipsCodeArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<StateSummaryViewCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<StateSummaryViewsOrderBy>>;
};


export type FipsCodeStateStatesHospitalizationsByStateFipsCodeArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<StatesHospitalizationCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<StatesHospitalizationsOrderBy>>;
};


export type FipsCodeStateStatesSummariesByStateFipsCodeArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<StatesSummaryCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<StatesSummariesOrderBy>>;
};


export type FipsCodeStateStatesTestingsByStateFipsCodeArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<StatesTestingCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<StatesTestingsOrderBy>>;
};

/**
 * A condition to be used against `FipsCodeState` object types. All fields are
 * tested for equality and combined with a logical ‘and.’
 */
export type FipsCodeStateCondition = {
  /** Checks for equality with the object’s `stateFipsCode` field. */
  stateFipsCode?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `stateGnisid` field. */
  stateGnisid?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `stateName` field. */
  stateName?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `statePostalAbbreviation` field. */
  statePostalAbbreviation?: Maybe<Scalars['String']>;
};

/** An input for mutations affecting `FipsCodeState` */
export type FipsCodeStateInput = {
  stateFipsCode: Scalars['String'];
  stateGnisid?: Maybe<Scalars['String']>;
  stateName?: Maybe<Scalars['String']>;
  statePostalAbbreviation?: Maybe<Scalars['String']>;
};

/** Represents an update to a `FipsCodeState`. Fields that are set will be updated. */
export type FipsCodeStatePatch = {
  stateFipsCode?: Maybe<Scalars['String']>;
  stateGnisid?: Maybe<Scalars['String']>;
  stateName?: Maybe<Scalars['String']>;
  statePostalAbbreviation?: Maybe<Scalars['String']>;
};

/** A connection to a list of `FipsCodeState` values. */
export type FipsCodeStatesConnection = {
  __typename?: 'FipsCodeStatesConnection';
  /** A list of edges which contains the `FipsCodeState` and cursor to aid in pagination. */
  edges: Array<FipsCodeStatesEdge>;
  /** A list of `FipsCodeState` objects. */
  nodes: Array<Maybe<FipsCodeState>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  /** The count of *all* `FipsCodeState` you could get from the connection. */
  totalCount: Scalars['Int'];
};

/** A `FipsCodeState` edge in the connection. */
export type FipsCodeStatesEdge = {
  __typename?: 'FipsCodeStatesEdge';
  /** A cursor for use in pagination. */
  cursor?: Maybe<Scalars['Cursor']>;
  /** The `FipsCodeState` at the end of the edge. */
  node?: Maybe<FipsCodeState>;
};

/** Methods to use when ordering `FipsCodeState`. */
export enum FipsCodeStatesOrderBy {
  Natural = 'NATURAL',
  PrimaryKeyAsc = 'PRIMARY_KEY_ASC',
  PrimaryKeyDesc = 'PRIMARY_KEY_DESC',
  StateFipsCodeAsc = 'STATE_FIPS_CODE_ASC',
  StateFipsCodeDesc = 'STATE_FIPS_CODE_DESC',
  StateGnisidAsc = 'STATE_GNISID_ASC',
  StateGnisidDesc = 'STATE_GNISID_DESC',
  StateNameAsc = 'STATE_NAME_ASC',
  StateNameDesc = 'STATE_NAME_DESC',
  StatePostalAbbreviationAsc = 'STATE_POSTAL_ABBREVIATION_ASC',
  StatePostalAbbreviationDesc = 'STATE_POSTAL_ABBREVIATION_DESC'
}

export type MsaCasesAll = {
  __typename?: 'MsaCasesAll';
  confirmedCases?: Maybe<Scalars['Int']>;
  date?: Maybe<Scalars['String']>;
  deaths?: Maybe<Scalars['Int']>;
  msdId?: Maybe<Scalars['String']>;
};

/**
 * A condition to be used against `MsaCasesAll` object types. All fields are tested
 * for equality and combined with a logical ‘and.’
 */
export type MsaCasesAllCondition = {
  /** Checks for equality with the object’s `confirmedCases` field. */
  confirmedCases?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `date` field. */
  date?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `deaths` field. */
  deaths?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `msdId` field. */
  msdId?: Maybe<Scalars['String']>;
};

/** An input for mutations affecting `MsaCasesAll` */
export type MsaCasesAllInput = {
  confirmedCases?: Maybe<Scalars['Int']>;
  date?: Maybe<Scalars['String']>;
  deaths?: Maybe<Scalars['Int']>;
  msdId?: Maybe<Scalars['String']>;
};

/** A connection to a list of `MsaCasesAll` values. */
export type MsaCasesAllsConnection = {
  __typename?: 'MsaCasesAllsConnection';
  /** A list of edges which contains the `MsaCasesAll` and cursor to aid in pagination. */
  edges: Array<MsaCasesAllsEdge>;
  /** A list of `MsaCasesAll` objects. */
  nodes: Array<Maybe<MsaCasesAll>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  /** The count of *all* `MsaCasesAll` you could get from the connection. */
  totalCount: Scalars['Int'];
};

/** A `MsaCasesAll` edge in the connection. */
export type MsaCasesAllsEdge = {
  __typename?: 'MsaCasesAllsEdge';
  /** A cursor for use in pagination. */
  cursor?: Maybe<Scalars['Cursor']>;
  /** The `MsaCasesAll` at the end of the edge. */
  node?: Maybe<MsaCasesAll>;
};

/** Methods to use when ordering `MsaCasesAll`. */
export enum MsaCasesAllsOrderBy {
  ConfirmedCasesAsc = 'CONFIRMED_CASES_ASC',
  ConfirmedCasesDesc = 'CONFIRMED_CASES_DESC',
  DateAsc = 'DATE_ASC',
  DateDesc = 'DATE_DESC',
  DeathsAsc = 'DEATHS_ASC',
  DeathsDesc = 'DEATHS_DESC',
  MsdIdAsc = 'MSD_ID_ASC',
  MsdIdDesc = 'MSD_ID_DESC',
  Natural = 'NATURAL'
}

export type MsaDefinition = {
  __typename?: 'MsaDefinition';
  centerState?: Maybe<Scalars['String']>;
  centerStateFipsCode?: Maybe<Scalars['String']>;
  countyFipsCode?: Maybe<Scalars['String']>;
  countyName?: Maybe<Scalars['String']>;
  /** Reads a single `FipsCodeCounty` that is related to this `MsaDefinition`. */
  fipsCodeCountyByCountyFipsCode?: Maybe<FipsCodeCounty>;
  /** Reads a single `FipsCodeState` that is related to this `MsaDefinition`. */
  fipsCodeStateByStateFipsCode?: Maybe<FipsCodeState>;
  friendly?: Maybe<Scalars['String']>;
  id?: Maybe<Scalars['String']>;
  name?: Maybe<Scalars['String']>;
  state?: Maybe<Scalars['String']>;
  stateFipsCode?: Maybe<Scalars['String']>;
  stateName?: Maybe<Scalars['String']>;
  urlName?: Maybe<Scalars['String']>;
};

/**
 * A condition to be used against `MsaDefinition` object types. All fields are
 * tested for equality and combined with a logical ‘and.’
 */
export type MsaDefinitionCondition = {
  /** Checks for equality with the object’s `centerState` field. */
  centerState?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `centerStateFipsCode` field. */
  centerStateFipsCode?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `countyFipsCode` field. */
  countyFipsCode?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `countyName` field. */
  countyName?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `friendly` field. */
  friendly?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `id` field. */
  id?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `name` field. */
  name?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `state` field. */
  state?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `stateFipsCode` field. */
  stateFipsCode?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `stateName` field. */
  stateName?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `urlName` field. */
  urlName?: Maybe<Scalars['String']>;
};

/** An input for mutations affecting `MsaDefinition` */
export type MsaDefinitionInput = {
  centerState?: Maybe<Scalars['String']>;
  centerStateFipsCode?: Maybe<Scalars['String']>;
  countyFipsCode?: Maybe<Scalars['String']>;
  countyName?: Maybe<Scalars['String']>;
  friendly?: Maybe<Scalars['String']>;
  id?: Maybe<Scalars['String']>;
  name?: Maybe<Scalars['String']>;
  state?: Maybe<Scalars['String']>;
  stateFipsCode?: Maybe<Scalars['String']>;
  stateName?: Maybe<Scalars['String']>;
  urlName?: Maybe<Scalars['String']>;
};

/** A connection to a list of `MsaDefinition` values. */
export type MsaDefinitionsConnection = {
  __typename?: 'MsaDefinitionsConnection';
  /** A list of edges which contains the `MsaDefinition` and cursor to aid in pagination. */
  edges: Array<MsaDefinitionsEdge>;
  /** A list of `MsaDefinition` objects. */
  nodes: Array<Maybe<MsaDefinition>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  /** The count of *all* `MsaDefinition` you could get from the connection. */
  totalCount: Scalars['Int'];
};

/** A `MsaDefinition` edge in the connection. */
export type MsaDefinitionsEdge = {
  __typename?: 'MsaDefinitionsEdge';
  /** A cursor for use in pagination. */
  cursor?: Maybe<Scalars['Cursor']>;
  /** The `MsaDefinition` at the end of the edge. */
  node?: Maybe<MsaDefinition>;
};

/** Methods to use when ordering `MsaDefinition`. */
export enum MsaDefinitionsOrderBy {
  CenterStateAsc = 'CENTER_STATE_ASC',
  CenterStateDesc = 'CENTER_STATE_DESC',
  CenterStateFipsCodeAsc = 'CENTER_STATE_FIPS_CODE_ASC',
  CenterStateFipsCodeDesc = 'CENTER_STATE_FIPS_CODE_DESC',
  CountyFipsCodeAsc = 'COUNTY_FIPS_CODE_ASC',
  CountyFipsCodeDesc = 'COUNTY_FIPS_CODE_DESC',
  CountyNameAsc = 'COUNTY_NAME_ASC',
  CountyNameDesc = 'COUNTY_NAME_DESC',
  FriendlyAsc = 'FRIENDLY_ASC',
  FriendlyDesc = 'FRIENDLY_DESC',
  IdAsc = 'ID_ASC',
  IdDesc = 'ID_DESC',
  NameAsc = 'NAME_ASC',
  NameDesc = 'NAME_DESC',
  Natural = 'NATURAL',
  StateAsc = 'STATE_ASC',
  StateDesc = 'STATE_DESC',
  StateFipsCodeAsc = 'STATE_FIPS_CODE_ASC',
  StateFipsCodeDesc = 'STATE_FIPS_CODE_DESC',
  StateNameAsc = 'STATE_NAME_ASC',
  StateNameDesc = 'STATE_NAME_DESC',
  UrlNameAsc = 'URL_NAME_ASC',
  UrlNameDesc = 'URL_NAME_DESC'
}

/** The root mutation type which contains root level fields which mutate data. */
export type Mutation = {
  __typename?: 'Mutation';
  /** Creates a single `CountiesSummary`. */
  createCountiesSummary?: Maybe<CreateCountiesSummaryPayload>;
  /** Creates a single `CountyCasesAll`. */
  createCountyCasesAll?: Maybe<CreateCountyCasesAllPayload>;
  /** Creates a single `CountyPopulation`. */
  createCountyPopulation?: Maybe<CreateCountyPopulationPayload>;
  /** Creates a single `FipsCodeCounty`. */
  createFipsCodeCounty?: Maybe<CreateFipsCodeCountyPayload>;
  /** Creates a single `FipsCodeState`. */
  createFipsCodeState?: Maybe<CreateFipsCodeStatePayload>;
  /** Creates a single `MsaCasesAll`. */
  createMsaCasesAll?: Maybe<CreateMsaCasesAllPayload>;
  /** Creates a single `MsaDefinition`. */
  createMsaDefinition?: Maybe<CreateMsaDefinitionPayload>;
  /** Creates a single `StateCasesAll`. */
  createStateCasesAll?: Maybe<CreateStateCasesAllPayload>;
  /** Creates a single `StatePopulation`. */
  createStatePopulation?: Maybe<CreateStatePopulationPayload>;
  /** Creates a single `StatesHospitalization`. */
  createStatesHospitalization?: Maybe<CreateStatesHospitalizationPayload>;
  /** Creates a single `StatesSummary`. */
  createStatesSummary?: Maybe<CreateStatesSummaryPayload>;
  /** Creates a single `StatesTesting`. */
  createStatesTesting?: Maybe<CreateStatesTestingPayload>;
  /** Creates a single `UsCasesAll`. */
  createUsCasesAll?: Maybe<CreateUsCasesAllPayload>;
  /** Creates a single `UsHospitalization`. */
  createUsHospitalization?: Maybe<CreateUsHospitalizationPayload>;
  /** Creates a single `UsSummary`. */
  createUsSummary?: Maybe<CreateUsSummaryPayload>;
  /** Creates a single `UsTesting`. */
  createUsTesting?: Maybe<CreateUsTestingPayload>;
  /** Deletes a single `FipsCodeCounty` using its globally unique id. */
  deleteFipsCodeCounty?: Maybe<DeleteFipsCodeCountyPayload>;
  /** Deletes a single `FipsCodeCounty` using a unique key. */
  deleteFipsCodeCountyByCountyFipsCode?: Maybe<DeleteFipsCodeCountyPayload>;
  /** Deletes a single `FipsCodeState` using its globally unique id. */
  deleteFipsCodeState?: Maybe<DeleteFipsCodeStatePayload>;
  /** Deletes a single `FipsCodeState` using a unique key. */
  deleteFipsCodeStateByStateFipsCode?: Maybe<DeleteFipsCodeStatePayload>;
  /** Updates a single `FipsCodeCounty` using its globally unique id and a patch. */
  updateFipsCodeCounty?: Maybe<UpdateFipsCodeCountyPayload>;
  /** Updates a single `FipsCodeCounty` using a unique key and a patch. */
  updateFipsCodeCountyByCountyFipsCode?: Maybe<UpdateFipsCodeCountyPayload>;
  /** Updates a single `FipsCodeState` using its globally unique id and a patch. */
  updateFipsCodeState?: Maybe<UpdateFipsCodeStatePayload>;
  /** Updates a single `FipsCodeState` using a unique key and a patch. */
  updateFipsCodeStateByStateFipsCode?: Maybe<UpdateFipsCodeStatePayload>;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationCreateCountiesSummaryArgs = {
  input: CreateCountiesSummaryInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationCreateCountyCasesAllArgs = {
  input: CreateCountyCasesAllInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationCreateCountyPopulationArgs = {
  input: CreateCountyPopulationInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationCreateFipsCodeCountyArgs = {
  input: CreateFipsCodeCountyInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationCreateFipsCodeStateArgs = {
  input: CreateFipsCodeStateInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationCreateMsaCasesAllArgs = {
  input: CreateMsaCasesAllInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationCreateMsaDefinitionArgs = {
  input: CreateMsaDefinitionInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationCreateStateCasesAllArgs = {
  input: CreateStateCasesAllInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationCreateStatePopulationArgs = {
  input: CreateStatePopulationInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationCreateStatesHospitalizationArgs = {
  input: CreateStatesHospitalizationInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationCreateStatesSummaryArgs = {
  input: CreateStatesSummaryInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationCreateStatesTestingArgs = {
  input: CreateStatesTestingInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationCreateUsCasesAllArgs = {
  input: CreateUsCasesAllInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationCreateUsHospitalizationArgs = {
  input: CreateUsHospitalizationInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationCreateUsSummaryArgs = {
  input: CreateUsSummaryInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationCreateUsTestingArgs = {
  input: CreateUsTestingInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationDeleteFipsCodeCountyArgs = {
  input: DeleteFipsCodeCountyInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationDeleteFipsCodeCountyByCountyFipsCodeArgs = {
  input: DeleteFipsCodeCountyByCountyFipsCodeInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationDeleteFipsCodeStateArgs = {
  input: DeleteFipsCodeStateInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationDeleteFipsCodeStateByStateFipsCodeArgs = {
  input: DeleteFipsCodeStateByStateFipsCodeInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationUpdateFipsCodeCountyArgs = {
  input: UpdateFipsCodeCountyInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationUpdateFipsCodeCountyByCountyFipsCodeArgs = {
  input: UpdateFipsCodeCountyByCountyFipsCodeInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationUpdateFipsCodeStateArgs = {
  input: UpdateFipsCodeStateInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationUpdateFipsCodeStateByStateFipsCodeArgs = {
  input: UpdateFipsCodeStateByStateFipsCodeInput;
};

/** An object with a globally unique `ID`. */
export type Node = {
  /** A globally unique identifier. Can be used in various places throughout the system to identify this single value. */
  nodeId: Scalars['ID'];
};

/** Information about pagination in a connection. */
export type PageInfo = {
  __typename?: 'PageInfo';
  /** When paginating forwards, the cursor to continue. */
  endCursor?: Maybe<Scalars['Cursor']>;
  /** When paginating forwards, are there more items? */
  hasNextPage: Scalars['Boolean'];
  /** When paginating backwards, are there more items? */
  hasPreviousPage: Scalars['Boolean'];
  /** When paginating backwards, the cursor to continue. */
  startCursor?: Maybe<Scalars['Cursor']>;
};

/** The root query type which gives access points into the data universe. */
export type Query = Node & {
  __typename?: 'Query';
  /** Reads and enables pagination through a set of `CountiesSummary`. */
  allCountiesSummaries?: Maybe<CountiesSummariesConnection>;
  /** Reads and enables pagination through a set of `CountyCasesAll`. */
  allCountyCasesAlls?: Maybe<CountyCasesAllsConnection>;
  /** Reads and enables pagination through a set of `CountyPopulation`. */
  allCountyPopulations?: Maybe<CountyPopulationsConnection>;
  /** Reads and enables pagination through a set of `CountySummaryView`. */
  allCountySummaryViews?: Maybe<CountySummaryViewsConnection>;
  /** Reads and enables pagination through a set of `FipsCodeCounty`. */
  allFipsCodeCounties?: Maybe<FipsCodeCountiesConnection>;
  /** Reads and enables pagination through a set of `FipsCodeState`. */
  allFipsCodeStates?: Maybe<FipsCodeStatesConnection>;
  /** Reads and enables pagination through a set of `MsaCasesAll`. */
  allMsaCasesAlls?: Maybe<MsaCasesAllsConnection>;
  /** Reads and enables pagination through a set of `MsaDefinition`. */
  allMsaDefinitions?: Maybe<MsaDefinitionsConnection>;
  /** Reads and enables pagination through a set of `StateCasesAll`. */
  allStateCasesAlls?: Maybe<StateCasesAllsConnection>;
  /** Reads and enables pagination through a set of `StatePopulation`. */
  allStatePopulations?: Maybe<StatePopulationsConnection>;
  /** Reads and enables pagination through a set of `StateSummaryView`. */
  allStateSummaryViews?: Maybe<StateSummaryViewsConnection>;
  /** Reads and enables pagination through a set of `StatesHospitalization`. */
  allStatesHospitalizations?: Maybe<StatesHospitalizationsConnection>;
  /** Reads and enables pagination through a set of `StatesSummary`. */
  allStatesSummaries?: Maybe<StatesSummariesConnection>;
  /** Reads and enables pagination through a set of `StatesTesting`. */
  allStatesTestings?: Maybe<StatesTestingsConnection>;
  /** Reads and enables pagination through a set of `UsCasesAll`. */
  allUsCasesAlls?: Maybe<UsCasesAllsConnection>;
  /** Reads and enables pagination through a set of `UsHospitalization`. */
  allUsHospitalizations?: Maybe<UsHospitalizationsConnection>;
  /** Reads and enables pagination through a set of `UsSummary`. */
  allUsSummaries?: Maybe<UsSummariesConnection>;
  /** Reads and enables pagination through a set of `UsSummaryView`. */
  allUsSummaryViews?: Maybe<UsSummaryViewsConnection>;
  /** Reads and enables pagination through a set of `UsTesting`. */
  allUsTestings?: Maybe<UsTestingsConnection>;
  /** Reads a single `FipsCodeCounty` using its globally unique `ID`. */
  fipsCodeCounty?: Maybe<FipsCodeCounty>;
  fipsCodeCountyByCountyFipsCode?: Maybe<FipsCodeCounty>;
  /** Reads a single `FipsCodeState` using its globally unique `ID`. */
  fipsCodeState?: Maybe<FipsCodeState>;
  fipsCodeStateByStateFipsCode?: Maybe<FipsCodeState>;
  /** Fetches an object given its globally unique `ID`. */
  node?: Maybe<Node>;
  /** The root query type must be a `Node` to work well with Relay 1 mutations. This just resolves to `query`. */
  nodeId: Scalars['ID'];
  /**
   * Exposes the root query type nested one level down. This is helpful for Relay 1
   * which can only query top level fields if they are in a particular form.
   */
  query: Query;
};


/** The root query type which gives access points into the data universe. */
export type QueryAllCountiesSummariesArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<CountiesSummaryCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<CountiesSummariesOrderBy>>;
};


/** The root query type which gives access points into the data universe. */
export type QueryAllCountyCasesAllsArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<CountyCasesAllCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<CountyCasesAllsOrderBy>>;
};


/** The root query type which gives access points into the data universe. */
export type QueryAllCountyPopulationsArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<CountyPopulationCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<CountyPopulationsOrderBy>>;
};


/** The root query type which gives access points into the data universe. */
export type QueryAllCountySummaryViewsArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<CountySummaryViewCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<CountySummaryViewsOrderBy>>;
};


/** The root query type which gives access points into the data universe. */
export type QueryAllFipsCodeCountiesArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<FipsCodeCountyCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<FipsCodeCountiesOrderBy>>;
};


/** The root query type which gives access points into the data universe. */
export type QueryAllFipsCodeStatesArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<FipsCodeStateCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<FipsCodeStatesOrderBy>>;
};


/** The root query type which gives access points into the data universe. */
export type QueryAllMsaCasesAllsArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<MsaCasesAllCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<MsaCasesAllsOrderBy>>;
};


/** The root query type which gives access points into the data universe. */
export type QueryAllMsaDefinitionsArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<MsaDefinitionCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<MsaDefinitionsOrderBy>>;
};


/** The root query type which gives access points into the data universe. */
export type QueryAllStateCasesAllsArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<StateCasesAllCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<StateCasesAllsOrderBy>>;
};


/** The root query type which gives access points into the data universe. */
export type QueryAllStatePopulationsArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<StatePopulationCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<StatePopulationsOrderBy>>;
};


/** The root query type which gives access points into the data universe. */
export type QueryAllStateSummaryViewsArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<StateSummaryViewCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<StateSummaryViewsOrderBy>>;
};


/** The root query type which gives access points into the data universe. */
export type QueryAllStatesHospitalizationsArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<StatesHospitalizationCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<StatesHospitalizationsOrderBy>>;
};


/** The root query type which gives access points into the data universe. */
export type QueryAllStatesSummariesArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<StatesSummaryCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<StatesSummariesOrderBy>>;
};


/** The root query type which gives access points into the data universe. */
export type QueryAllStatesTestingsArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<StatesTestingCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<StatesTestingsOrderBy>>;
};


/** The root query type which gives access points into the data universe. */
export type QueryAllUsCasesAllsArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<UsCasesAllCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<UsCasesAllsOrderBy>>;
};


/** The root query type which gives access points into the data universe. */
export type QueryAllUsHospitalizationsArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<UsHospitalizationCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<UsHospitalizationsOrderBy>>;
};


/** The root query type which gives access points into the data universe. */
export type QueryAllUsSummariesArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<UsSummaryCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<UsSummariesOrderBy>>;
};


/** The root query type which gives access points into the data universe. */
export type QueryAllUsSummaryViewsArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<UsSummaryViewCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<UsSummaryViewsOrderBy>>;
};


/** The root query type which gives access points into the data universe. */
export type QueryAllUsTestingsArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<UsTestingCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<UsTestingsOrderBy>>;
};


/** The root query type which gives access points into the data universe. */
export type QueryFipsCodeCountyArgs = {
  nodeId: Scalars['ID'];
};


/** The root query type which gives access points into the data universe. */
export type QueryFipsCodeCountyByCountyFipsCodeArgs = {
  countyFipsCode: Scalars['String'];
};


/** The root query type which gives access points into the data universe. */
export type QueryFipsCodeStateArgs = {
  nodeId: Scalars['ID'];
};


/** The root query type which gives access points into the data universe. */
export type QueryFipsCodeStateByStateFipsCodeArgs = {
  stateFipsCode: Scalars['String'];
};


/** The root query type which gives access points into the data universe. */
export type QueryNodeArgs = {
  nodeId: Scalars['ID'];
};

export type StateCasesAll = {
  __typename?: 'StateCasesAll';
  confirmedCases?: Maybe<Scalars['Int']>;
  date?: Maybe<Scalars['String']>;
  deaths?: Maybe<Scalars['Int']>;
  /** Reads a single `FipsCodeState` that is related to this `StateCasesAll`. */
  fipsCodeStateByStateFipsCode?: Maybe<FipsCodeState>;
  stateFipsCode?: Maybe<Scalars['String']>;
  stateName?: Maybe<Scalars['String']>;
};

/**
 * A condition to be used against `StateCasesAll` object types. All fields are
 * tested for equality and combined with a logical ‘and.’
 */
export type StateCasesAllCondition = {
  /** Checks for equality with the object’s `confirmedCases` field. */
  confirmedCases?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `date` field. */
  date?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `deaths` field. */
  deaths?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `stateFipsCode` field. */
  stateFipsCode?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `stateName` field. */
  stateName?: Maybe<Scalars['String']>;
};

/** An input for mutations affecting `StateCasesAll` */
export type StateCasesAllInput = {
  confirmedCases?: Maybe<Scalars['Int']>;
  date?: Maybe<Scalars['String']>;
  deaths?: Maybe<Scalars['Int']>;
  stateFipsCode?: Maybe<Scalars['String']>;
  stateName?: Maybe<Scalars['String']>;
};

/** A connection to a list of `StateCasesAll` values. */
export type StateCasesAllsConnection = {
  __typename?: 'StateCasesAllsConnection';
  /** A list of edges which contains the `StateCasesAll` and cursor to aid in pagination. */
  edges: Array<StateCasesAllsEdge>;
  /** A list of `StateCasesAll` objects. */
  nodes: Array<Maybe<StateCasesAll>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  /** The count of *all* `StateCasesAll` you could get from the connection. */
  totalCount: Scalars['Int'];
};

/** A `StateCasesAll` edge in the connection. */
export type StateCasesAllsEdge = {
  __typename?: 'StateCasesAllsEdge';
  /** A cursor for use in pagination. */
  cursor?: Maybe<Scalars['Cursor']>;
  /** The `StateCasesAll` at the end of the edge. */
  node?: Maybe<StateCasesAll>;
};

/** Methods to use when ordering `StateCasesAll`. */
export enum StateCasesAllsOrderBy {
  ConfirmedCasesAsc = 'CONFIRMED_CASES_ASC',
  ConfirmedCasesDesc = 'CONFIRMED_CASES_DESC',
  DateAsc = 'DATE_ASC',
  DateDesc = 'DATE_DESC',
  DeathsAsc = 'DEATHS_ASC',
  DeathsDesc = 'DEATHS_DESC',
  Natural = 'NATURAL',
  StateFipsCodeAsc = 'STATE_FIPS_CODE_ASC',
  StateFipsCodeDesc = 'STATE_FIPS_CODE_DESC',
  StateNameAsc = 'STATE_NAME_ASC',
  StateNameDesc = 'STATE_NAME_DESC'
}

export type StatePopulation = {
  __typename?: 'StatePopulation';
  /** Reads a single `FipsCodeState` that is related to this `StatePopulation`. */
  fipsCodeStateByStateFipsCode?: Maybe<FipsCodeState>;
  pop2020?: Maybe<Scalars['Int']>;
  stateFipsCode?: Maybe<Scalars['String']>;
};

/**
 * A condition to be used against `StatePopulation` object types. All fields are
 * tested for equality and combined with a logical ‘and.’
 */
export type StatePopulationCondition = {
  /** Checks for equality with the object’s `pop2020` field. */
  pop2020?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `stateFipsCode` field. */
  stateFipsCode?: Maybe<Scalars['String']>;
};

/** An input for mutations affecting `StatePopulation` */
export type StatePopulationInput = {
  pop2020?: Maybe<Scalars['Int']>;
  stateFipsCode?: Maybe<Scalars['String']>;
};

/** A connection to a list of `StatePopulation` values. */
export type StatePopulationsConnection = {
  __typename?: 'StatePopulationsConnection';
  /** A list of edges which contains the `StatePopulation` and cursor to aid in pagination. */
  edges: Array<StatePopulationsEdge>;
  /** A list of `StatePopulation` objects. */
  nodes: Array<Maybe<StatePopulation>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  /** The count of *all* `StatePopulation` you could get from the connection. */
  totalCount: Scalars['Int'];
};

/** A `StatePopulation` edge in the connection. */
export type StatePopulationsEdge = {
  __typename?: 'StatePopulationsEdge';
  /** A cursor for use in pagination. */
  cursor?: Maybe<Scalars['Cursor']>;
  /** The `StatePopulation` at the end of the edge. */
  node?: Maybe<StatePopulation>;
};

/** Methods to use when ordering `StatePopulation`. */
export enum StatePopulationsOrderBy {
  Natural = 'NATURAL',
  Pop2020Asc = 'POP2020_ASC',
  Pop2020Desc = 'POP2020_DESC',
  StateFipsCodeAsc = 'STATE_FIPS_CODE_ASC',
  StateFipsCodeDesc = 'STATE_FIPS_CODE_DESC'
}

export type StateSummaryView = {
  __typename?: 'StateSummaryView';
  confirmedCases?: Maybe<Scalars['Int']>;
  confirmedIncrease?: Maybe<Scalars['Int']>;
  deathIncrease?: Maybe<Scalars['Int']>;
  deaths?: Maybe<Scalars['Int']>;
  /** Reads a single `FipsCodeState` that is related to this `StateSummaryView`. */
  fipsCodeStateByStateFipsCode?: Maybe<FipsCodeState>;
  negative?: Maybe<Scalars['Int']>;
  negativeIncrease?: Maybe<Scalars['Int']>;
  population?: Maybe<Scalars['Int']>;
  positive?: Maybe<Scalars['Int']>;
  positiveIncrease?: Maybe<Scalars['Int']>;
  stateFipsCode?: Maybe<Scalars['String']>;
  stateName?: Maybe<Scalars['String']>;
  totalTestResults?: Maybe<Scalars['Int']>;
};

/**
 * A condition to be used against `StateSummaryView` object types. All fields are
 * tested for equality and combined with a logical ‘and.’
 */
export type StateSummaryViewCondition = {
  /** Checks for equality with the object’s `confirmedCases` field. */
  confirmedCases?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `confirmedIncrease` field. */
  confirmedIncrease?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `deathIncrease` field. */
  deathIncrease?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `deaths` field. */
  deaths?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `negative` field. */
  negative?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `negativeIncrease` field. */
  negativeIncrease?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `population` field. */
  population?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `positive` field. */
  positive?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `positiveIncrease` field. */
  positiveIncrease?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `stateFipsCode` field. */
  stateFipsCode?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `stateName` field. */
  stateName?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `totalTestResults` field. */
  totalTestResults?: Maybe<Scalars['Int']>;
};

/** A connection to a list of `StateSummaryView` values. */
export type StateSummaryViewsConnection = {
  __typename?: 'StateSummaryViewsConnection';
  /** A list of edges which contains the `StateSummaryView` and cursor to aid in pagination. */
  edges: Array<StateSummaryViewsEdge>;
  /** A list of `StateSummaryView` objects. */
  nodes: Array<Maybe<StateSummaryView>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  /** The count of *all* `StateSummaryView` you could get from the connection. */
  totalCount: Scalars['Int'];
};

/** A `StateSummaryView` edge in the connection. */
export type StateSummaryViewsEdge = {
  __typename?: 'StateSummaryViewsEdge';
  /** A cursor for use in pagination. */
  cursor?: Maybe<Scalars['Cursor']>;
  /** The `StateSummaryView` at the end of the edge. */
  node?: Maybe<StateSummaryView>;
};

/** Methods to use when ordering `StateSummaryView`. */
export enum StateSummaryViewsOrderBy {
  ConfirmedCasesAsc = 'CONFIRMED_CASES_ASC',
  ConfirmedCasesDesc = 'CONFIRMED_CASES_DESC',
  ConfirmedIncreaseAsc = 'CONFIRMED_INCREASE_ASC',
  ConfirmedIncreaseDesc = 'CONFIRMED_INCREASE_DESC',
  DeathsAsc = 'DEATHS_ASC',
  DeathsDesc = 'DEATHS_DESC',
  DeathIncreaseAsc = 'DEATH_INCREASE_ASC',
  DeathIncreaseDesc = 'DEATH_INCREASE_DESC',
  Natural = 'NATURAL',
  NegativeAsc = 'NEGATIVE_ASC',
  NegativeDesc = 'NEGATIVE_DESC',
  NegativeIncreaseAsc = 'NEGATIVE_INCREASE_ASC',
  NegativeIncreaseDesc = 'NEGATIVE_INCREASE_DESC',
  PopulationAsc = 'POPULATION_ASC',
  PopulationDesc = 'POPULATION_DESC',
  PositiveAsc = 'POSITIVE_ASC',
  PositiveDesc = 'POSITIVE_DESC',
  PositiveIncreaseAsc = 'POSITIVE_INCREASE_ASC',
  PositiveIncreaseDesc = 'POSITIVE_INCREASE_DESC',
  StateFipsCodeAsc = 'STATE_FIPS_CODE_ASC',
  StateFipsCodeDesc = 'STATE_FIPS_CODE_DESC',
  StateNameAsc = 'STATE_NAME_ASC',
  StateNameDesc = 'STATE_NAME_DESC',
  TotalTestResultsAsc = 'TOTAL_TEST_RESULTS_ASC',
  TotalTestResultsDesc = 'TOTAL_TEST_RESULTS_DESC'
}

export type StatesHospitalization = {
  __typename?: 'StatesHospitalization';
  adultIcuBedUsed?: Maybe<Scalars['Int']>;
  adultIcuBedsCapacity?: Maybe<Scalars['Int']>;
  date?: Maybe<Scalars['String']>;
  /** Reads a single `FipsCodeState` that is related to this `StatesHospitalization`. */
  fipsCodeStateByStateFipsCode?: Maybe<FipsCodeState>;
  hospitalizedCurrently?: Maybe<Scalars['Int']>;
  inIcuCurrently?: Maybe<Scalars['Int']>;
  inpatientBedsCapacity?: Maybe<Scalars['Int']>;
  inpatientBedsUsed?: Maybe<Scalars['Int']>;
  state?: Maybe<Scalars['String']>;
  stateFipsCode?: Maybe<Scalars['String']>;
  stateGnisid?: Maybe<Scalars['String']>;
  stateName?: Maybe<Scalars['String']>;
  statePostalAbbreviation?: Maybe<Scalars['String']>;
};

/**
 * A condition to be used against `StatesHospitalization` object types. All fields
 * are tested for equality and combined with a logical ‘and.’
 */
export type StatesHospitalizationCondition = {
  /** Checks for equality with the object’s `adultIcuBedUsed` field. */
  adultIcuBedUsed?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `adultIcuBedsCapacity` field. */
  adultIcuBedsCapacity?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `date` field. */
  date?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `hospitalizedCurrently` field. */
  hospitalizedCurrently?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `inIcuCurrently` field. */
  inIcuCurrently?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `inpatientBedsCapacity` field. */
  inpatientBedsCapacity?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `inpatientBedsUsed` field. */
  inpatientBedsUsed?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `state` field. */
  state?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `stateFipsCode` field. */
  stateFipsCode?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `stateGnisid` field. */
  stateGnisid?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `stateName` field. */
  stateName?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `statePostalAbbreviation` field. */
  statePostalAbbreviation?: Maybe<Scalars['String']>;
};

/** An input for mutations affecting `StatesHospitalization` */
export type StatesHospitalizationInput = {
  adultIcuBedUsed?: Maybe<Scalars['Int']>;
  adultIcuBedsCapacity?: Maybe<Scalars['Int']>;
  date?: Maybe<Scalars['String']>;
  hospitalizedCurrently?: Maybe<Scalars['Int']>;
  inIcuCurrently?: Maybe<Scalars['Int']>;
  inpatientBedsCapacity?: Maybe<Scalars['Int']>;
  inpatientBedsUsed?: Maybe<Scalars['Int']>;
  state?: Maybe<Scalars['String']>;
  stateFipsCode?: Maybe<Scalars['String']>;
  stateGnisid?: Maybe<Scalars['String']>;
  stateName?: Maybe<Scalars['String']>;
  statePostalAbbreviation?: Maybe<Scalars['String']>;
};

/** A connection to a list of `StatesHospitalization` values. */
export type StatesHospitalizationsConnection = {
  __typename?: 'StatesHospitalizationsConnection';
  /** A list of edges which contains the `StatesHospitalization` and cursor to aid in pagination. */
  edges: Array<StatesHospitalizationsEdge>;
  /** A list of `StatesHospitalization` objects. */
  nodes: Array<Maybe<StatesHospitalization>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  /** The count of *all* `StatesHospitalization` you could get from the connection. */
  totalCount: Scalars['Int'];
};

/** A `StatesHospitalization` edge in the connection. */
export type StatesHospitalizationsEdge = {
  __typename?: 'StatesHospitalizationsEdge';
  /** A cursor for use in pagination. */
  cursor?: Maybe<Scalars['Cursor']>;
  /** The `StatesHospitalization` at the end of the edge. */
  node?: Maybe<StatesHospitalization>;
};

/** Methods to use when ordering `StatesHospitalization`. */
export enum StatesHospitalizationsOrderBy {
  AdultIcuBedsCapacityAsc = 'ADULT_ICU_BEDS_CAPACITY_ASC',
  AdultIcuBedsCapacityDesc = 'ADULT_ICU_BEDS_CAPACITY_DESC',
  AdultIcuBedUsedAsc = 'ADULT_ICU_BED_USED_ASC',
  AdultIcuBedUsedDesc = 'ADULT_ICU_BED_USED_DESC',
  DateAsc = 'DATE_ASC',
  DateDesc = 'DATE_DESC',
  HospitalizedCurrentlyAsc = 'HOSPITALIZED_CURRENTLY_ASC',
  HospitalizedCurrentlyDesc = 'HOSPITALIZED_CURRENTLY_DESC',
  InpatientBedsCapacityAsc = 'INPATIENT_BEDS_CAPACITY_ASC',
  InpatientBedsCapacityDesc = 'INPATIENT_BEDS_CAPACITY_DESC',
  InpatientBedsUsedAsc = 'INPATIENT_BEDS_USED_ASC',
  InpatientBedsUsedDesc = 'INPATIENT_BEDS_USED_DESC',
  InIcuCurrentlyAsc = 'IN_ICU_CURRENTLY_ASC',
  InIcuCurrentlyDesc = 'IN_ICU_CURRENTLY_DESC',
  Natural = 'NATURAL',
  StateAsc = 'STATE_ASC',
  StateDesc = 'STATE_DESC',
  StateFipsCodeAsc = 'STATE_FIPS_CODE_ASC',
  StateFipsCodeDesc = 'STATE_FIPS_CODE_DESC',
  StateGnisidAsc = 'STATE_GNISID_ASC',
  StateGnisidDesc = 'STATE_GNISID_DESC',
  StateNameAsc = 'STATE_NAME_ASC',
  StateNameDesc = 'STATE_NAME_DESC',
  StatePostalAbbreviationAsc = 'STATE_POSTAL_ABBREVIATION_ASC',
  StatePostalAbbreviationDesc = 'STATE_POSTAL_ABBREVIATION_DESC'
}

/** A connection to a list of `StatesSummary` values. */
export type StatesSummariesConnection = {
  __typename?: 'StatesSummariesConnection';
  /** A list of edges which contains the `StatesSummary` and cursor to aid in pagination. */
  edges: Array<StatesSummariesEdge>;
  /** A list of `StatesSummary` objects. */
  nodes: Array<Maybe<StatesSummary>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  /** The count of *all* `StatesSummary` you could get from the connection. */
  totalCount: Scalars['Int'];
};

/** A `StatesSummary` edge in the connection. */
export type StatesSummariesEdge = {
  __typename?: 'StatesSummariesEdge';
  /** A cursor for use in pagination. */
  cursor?: Maybe<Scalars['Cursor']>;
  /** The `StatesSummary` at the end of the edge. */
  node?: Maybe<StatesSummary>;
};

/** Methods to use when ordering `StatesSummary`. */
export enum StatesSummariesOrderBy {
  AdultIcuBedsCapacityAsc = 'ADULT_ICU_BEDS_CAPACITY_ASC',
  AdultIcuBedsCapacityDesc = 'ADULT_ICU_BEDS_CAPACITY_DESC',
  ConfirmedCasesAsc = 'CONFIRMED_CASES_ASC',
  ConfirmedCasesDesc = 'CONFIRMED_CASES_DESC',
  ConfirmedIncrease_14DaysAsc = 'CONFIRMED_INCREASE_14DAYS_ASC',
  ConfirmedIncrease_14DaysDesc = 'CONFIRMED_INCREASE_14DAYS_DESC',
  ConfirmedIncreaseAsc = 'CONFIRMED_INCREASE_ASC',
  ConfirmedIncreaseDesc = 'CONFIRMED_INCREASE_DESC',
  HospitalizedCurrentlyAsc = 'HOSPITALIZED_CURRENTLY_ASC',
  HospitalizedCurrentlyDesc = 'HOSPITALIZED_CURRENTLY_DESC',
  InpatientBedsCapacityAsc = 'INPATIENT_BEDS_CAPACITY_ASC',
  InpatientBedsCapacityDesc = 'INPATIENT_BEDS_CAPACITY_DESC',
  InpatientBedsUsedAsc = 'INPATIENT_BEDS_USED_ASC',
  InpatientBedsUsedDesc = 'INPATIENT_BEDS_USED_DESC',
  InIcuCurrentlyAsc = 'IN_ICU_CURRENTLY_ASC',
  InIcuCurrentlyDesc = 'IN_ICU_CURRENTLY_DESC',
  Natural = 'NATURAL',
  PositiveAsc = 'POSITIVE_ASC',
  PositiveDesc = 'POSITIVE_DESC',
  PositiveIncreaseAsc = 'POSITIVE_INCREASE_ASC',
  PositiveIncreaseDesc = 'POSITIVE_INCREASE_DESC',
  StateFipsCodeAsc = 'STATE_FIPS_CODE_ASC',
  StateFipsCodeDesc = 'STATE_FIPS_CODE_DESC',
  StateNameAsc = 'STATE_NAME_ASC',
  StateNameDesc = 'STATE_NAME_DESC',
  TotalTestResultsAsc = 'TOTAL_TEST_RESULTS_ASC',
  TotalTestResultsDesc = 'TOTAL_TEST_RESULTS_DESC',
  TotalTestResultsIncreaseAsc = 'TOTAL_TEST_RESULTS_INCREASE_ASC',
  TotalTestResultsIncreaseDesc = 'TOTAL_TEST_RESULTS_INCREASE_DESC'
}

export type StatesSummary = {
  __typename?: 'StatesSummary';
  adultIcuBedsCapacity?: Maybe<Scalars['Int']>;
  confirmedCases?: Maybe<Scalars['Int']>;
  confirmedIncrease?: Maybe<Scalars['Int']>;
  confirmedIncrease14Days?: Maybe<Scalars['Int']>;
  /** Reads a single `FipsCodeState` that is related to this `StatesSummary`. */
  fipsCodeStateByStateFipsCode?: Maybe<FipsCodeState>;
  hospitalizedCurrently?: Maybe<Scalars['Int']>;
  inIcuCurrently?: Maybe<Scalars['Int']>;
  inpatientBedsCapacity?: Maybe<Scalars['Int']>;
  inpatientBedsUsed?: Maybe<Scalars['Int']>;
  positive?: Maybe<Scalars['Int']>;
  positiveIncrease?: Maybe<Scalars['Int']>;
  stateFipsCode?: Maybe<Scalars['String']>;
  stateName?: Maybe<Scalars['String']>;
  totalTestResults?: Maybe<Scalars['Int']>;
  totalTestResultsIncrease?: Maybe<Scalars['Int']>;
};

/**
 * A condition to be used against `StatesSummary` object types. All fields are
 * tested for equality and combined with a logical ‘and.’
 */
export type StatesSummaryCondition = {
  /** Checks for equality with the object’s `adultIcuBedsCapacity` field. */
  adultIcuBedsCapacity?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `confirmedCases` field. */
  confirmedCases?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `confirmedIncrease` field. */
  confirmedIncrease?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `confirmedIncrease14Days` field. */
  confirmedIncrease14Days?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `hospitalizedCurrently` field. */
  hospitalizedCurrently?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `inIcuCurrently` field. */
  inIcuCurrently?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `inpatientBedsCapacity` field. */
  inpatientBedsCapacity?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `inpatientBedsUsed` field. */
  inpatientBedsUsed?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `positive` field. */
  positive?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `positiveIncrease` field. */
  positiveIncrease?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `stateFipsCode` field. */
  stateFipsCode?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `stateName` field. */
  stateName?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `totalTestResults` field. */
  totalTestResults?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `totalTestResultsIncrease` field. */
  totalTestResultsIncrease?: Maybe<Scalars['Int']>;
};

/** An input for mutations affecting `StatesSummary` */
export type StatesSummaryInput = {
  adultIcuBedsCapacity?: Maybe<Scalars['Int']>;
  confirmedCases?: Maybe<Scalars['Int']>;
  confirmedIncrease?: Maybe<Scalars['Int']>;
  confirmedIncrease14Days?: Maybe<Scalars['Int']>;
  hospitalizedCurrently?: Maybe<Scalars['Int']>;
  inIcuCurrently?: Maybe<Scalars['Int']>;
  inpatientBedsCapacity?: Maybe<Scalars['Int']>;
  inpatientBedsUsed?: Maybe<Scalars['Int']>;
  positive?: Maybe<Scalars['Int']>;
  positiveIncrease?: Maybe<Scalars['Int']>;
  stateFipsCode?: Maybe<Scalars['String']>;
  stateName?: Maybe<Scalars['String']>;
  totalTestResults?: Maybe<Scalars['Int']>;
  totalTestResultsIncrease?: Maybe<Scalars['Int']>;
};

export type StatesTesting = {
  __typename?: 'StatesTesting';
  date?: Maybe<Scalars['String']>;
  /** Reads a single `FipsCodeState` that is related to this `StatesTesting`. */
  fipsCodeStateByStateFipsCode?: Maybe<FipsCodeState>;
  inconclusive?: Maybe<Scalars['Int']>;
  inconclusiveIncrease?: Maybe<Scalars['Int']>;
  negative?: Maybe<Scalars['Int']>;
  negativeIncrease?: Maybe<Scalars['Int']>;
  positive?: Maybe<Scalars['Int']>;
  positiveIncrease?: Maybe<Scalars['Int']>;
  state?: Maybe<Scalars['String']>;
  stateFipsCode?: Maybe<Scalars['String']>;
  stateName?: Maybe<Scalars['String']>;
  totalTestResults?: Maybe<Scalars['Int']>;
  totalTestResultsIncrease?: Maybe<Scalars['Int']>;
};

/**
 * A condition to be used against `StatesTesting` object types. All fields are
 * tested for equality and combined with a logical ‘and.’
 */
export type StatesTestingCondition = {
  /** Checks for equality with the object’s `date` field. */
  date?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `inconclusive` field. */
  inconclusive?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `inconclusiveIncrease` field. */
  inconclusiveIncrease?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `negative` field. */
  negative?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `negativeIncrease` field. */
  negativeIncrease?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `positive` field. */
  positive?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `positiveIncrease` field. */
  positiveIncrease?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `state` field. */
  state?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `stateFipsCode` field. */
  stateFipsCode?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `stateName` field. */
  stateName?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `totalTestResults` field. */
  totalTestResults?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `totalTestResultsIncrease` field. */
  totalTestResultsIncrease?: Maybe<Scalars['Int']>;
};

/** An input for mutations affecting `StatesTesting` */
export type StatesTestingInput = {
  date?: Maybe<Scalars['String']>;
  inconclusive?: Maybe<Scalars['Int']>;
  inconclusiveIncrease?: Maybe<Scalars['Int']>;
  negative?: Maybe<Scalars['Int']>;
  negativeIncrease?: Maybe<Scalars['Int']>;
  positive?: Maybe<Scalars['Int']>;
  positiveIncrease?: Maybe<Scalars['Int']>;
  state?: Maybe<Scalars['String']>;
  stateFipsCode?: Maybe<Scalars['String']>;
  stateName?: Maybe<Scalars['String']>;
  totalTestResults?: Maybe<Scalars['Int']>;
  totalTestResultsIncrease?: Maybe<Scalars['Int']>;
};

/** A connection to a list of `StatesTesting` values. */
export type StatesTestingsConnection = {
  __typename?: 'StatesTestingsConnection';
  /** A list of edges which contains the `StatesTesting` and cursor to aid in pagination. */
  edges: Array<StatesTestingsEdge>;
  /** A list of `StatesTesting` objects. */
  nodes: Array<Maybe<StatesTesting>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  /** The count of *all* `StatesTesting` you could get from the connection. */
  totalCount: Scalars['Int'];
};

/** A `StatesTesting` edge in the connection. */
export type StatesTestingsEdge = {
  __typename?: 'StatesTestingsEdge';
  /** A cursor for use in pagination. */
  cursor?: Maybe<Scalars['Cursor']>;
  /** The `StatesTesting` at the end of the edge. */
  node?: Maybe<StatesTesting>;
};

/** Methods to use when ordering `StatesTesting`. */
export enum StatesTestingsOrderBy {
  DateAsc = 'DATE_ASC',
  DateDesc = 'DATE_DESC',
  InconclusiveAsc = 'INCONCLUSIVE_ASC',
  InconclusiveDesc = 'INCONCLUSIVE_DESC',
  InconclusiveIncreaseAsc = 'INCONCLUSIVE_INCREASE_ASC',
  InconclusiveIncreaseDesc = 'INCONCLUSIVE_INCREASE_DESC',
  Natural = 'NATURAL',
  NegativeAsc = 'NEGATIVE_ASC',
  NegativeDesc = 'NEGATIVE_DESC',
  NegativeIncreaseAsc = 'NEGATIVE_INCREASE_ASC',
  NegativeIncreaseDesc = 'NEGATIVE_INCREASE_DESC',
  PositiveAsc = 'POSITIVE_ASC',
  PositiveDesc = 'POSITIVE_DESC',
  PositiveIncreaseAsc = 'POSITIVE_INCREASE_ASC',
  PositiveIncreaseDesc = 'POSITIVE_INCREASE_DESC',
  StateAsc = 'STATE_ASC',
  StateDesc = 'STATE_DESC',
  StateFipsCodeAsc = 'STATE_FIPS_CODE_ASC',
  StateFipsCodeDesc = 'STATE_FIPS_CODE_DESC',
  StateNameAsc = 'STATE_NAME_ASC',
  StateNameDesc = 'STATE_NAME_DESC',
  TotalTestResultsAsc = 'TOTAL_TEST_RESULTS_ASC',
  TotalTestResultsDesc = 'TOTAL_TEST_RESULTS_DESC',
  TotalTestResultsIncreaseAsc = 'TOTAL_TEST_RESULTS_INCREASE_ASC',
  TotalTestResultsIncreaseDesc = 'TOTAL_TEST_RESULTS_INCREASE_DESC'
}

/** All input for the `updateFipsCodeCountyByCountyFipsCode` mutation. */
export type UpdateFipsCodeCountyByCountyFipsCodeInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  countyFipsCode: Scalars['String'];
  /** An object where the defined keys will be set on the `FipsCodeCounty` being updated. */
  fipsCodeCountyPatch: FipsCodeCountyPatch;
};

/** All input for the `updateFipsCodeCounty` mutation. */
export type UpdateFipsCodeCountyInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** An object where the defined keys will be set on the `FipsCodeCounty` being updated. */
  fipsCodeCountyPatch: FipsCodeCountyPatch;
  /** The globally unique `ID` which will identify a single `FipsCodeCounty` to be updated. */
  nodeId: Scalars['ID'];
};

/** The output of our update `FipsCodeCounty` mutation. */
export type UpdateFipsCodeCountyPayload = {
  __typename?: 'UpdateFipsCodeCountyPayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `FipsCodeCounty` that was updated by this mutation. */
  fipsCodeCounty?: Maybe<FipsCodeCounty>;
  /** An edge for our `FipsCodeCounty`. May be used by Relay 1. */
  fipsCodeCountyEdge?: Maybe<FipsCodeCountiesEdge>;
  /** Reads a single `FipsCodeState` that is related to this `FipsCodeCounty`. */
  fipsCodeStateByStateFipsCode?: Maybe<FipsCodeState>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
};


/** The output of our update `FipsCodeCounty` mutation. */
export type UpdateFipsCodeCountyPayloadFipsCodeCountyEdgeArgs = {
  orderBy?: Maybe<Array<FipsCodeCountiesOrderBy>>;
};

/** All input for the `updateFipsCodeStateByStateFipsCode` mutation. */
export type UpdateFipsCodeStateByStateFipsCodeInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** An object where the defined keys will be set on the `FipsCodeState` being updated. */
  fipsCodeStatePatch: FipsCodeStatePatch;
  stateFipsCode: Scalars['String'];
};

/** All input for the `updateFipsCodeState` mutation. */
export type UpdateFipsCodeStateInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** An object where the defined keys will be set on the `FipsCodeState` being updated. */
  fipsCodeStatePatch: FipsCodeStatePatch;
  /** The globally unique `ID` which will identify a single `FipsCodeState` to be updated. */
  nodeId: Scalars['ID'];
};

/** The output of our update `FipsCodeState` mutation. */
export type UpdateFipsCodeStatePayload = {
  __typename?: 'UpdateFipsCodeStatePayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `FipsCodeState` that was updated by this mutation. */
  fipsCodeState?: Maybe<FipsCodeState>;
  /** An edge for our `FipsCodeState`. May be used by Relay 1. */
  fipsCodeStateEdge?: Maybe<FipsCodeStatesEdge>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
};


/** The output of our update `FipsCodeState` mutation. */
export type UpdateFipsCodeStatePayloadFipsCodeStateEdgeArgs = {
  orderBy?: Maybe<Array<FipsCodeStatesOrderBy>>;
};

export type UsCasesAll = {
  __typename?: 'UsCasesAll';
  confirmedCases?: Maybe<Scalars['Int']>;
  date?: Maybe<Scalars['String']>;
  deaths?: Maybe<Scalars['Int']>;
};

/**
 * A condition to be used against `UsCasesAll` object types. All fields are tested
 * for equality and combined with a logical ‘and.’
 */
export type UsCasesAllCondition = {
  /** Checks for equality with the object’s `confirmedCases` field. */
  confirmedCases?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `date` field. */
  date?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `deaths` field. */
  deaths?: Maybe<Scalars['Int']>;
};

/** An input for mutations affecting `UsCasesAll` */
export type UsCasesAllInput = {
  confirmedCases?: Maybe<Scalars['Int']>;
  date?: Maybe<Scalars['String']>;
  deaths?: Maybe<Scalars['Int']>;
};

/** A connection to a list of `UsCasesAll` values. */
export type UsCasesAllsConnection = {
  __typename?: 'UsCasesAllsConnection';
  /** A list of edges which contains the `UsCasesAll` and cursor to aid in pagination. */
  edges: Array<UsCasesAllsEdge>;
  /** A list of `UsCasesAll` objects. */
  nodes: Array<Maybe<UsCasesAll>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  /** The count of *all* `UsCasesAll` you could get from the connection. */
  totalCount: Scalars['Int'];
};

/** A `UsCasesAll` edge in the connection. */
export type UsCasesAllsEdge = {
  __typename?: 'UsCasesAllsEdge';
  /** A cursor for use in pagination. */
  cursor?: Maybe<Scalars['Cursor']>;
  /** The `UsCasesAll` at the end of the edge. */
  node?: Maybe<UsCasesAll>;
};

/** Methods to use when ordering `UsCasesAll`. */
export enum UsCasesAllsOrderBy {
  ConfirmedCasesAsc = 'CONFIRMED_CASES_ASC',
  ConfirmedCasesDesc = 'CONFIRMED_CASES_DESC',
  DateAsc = 'DATE_ASC',
  DateDesc = 'DATE_DESC',
  DeathsAsc = 'DEATHS_ASC',
  DeathsDesc = 'DEATHS_DESC',
  Natural = 'NATURAL'
}

export type UsHospitalization = {
  __typename?: 'UsHospitalization';
  adultIcuBedUsed?: Maybe<Scalars['Int']>;
  adultIcuBedsCapacity?: Maybe<Scalars['Int']>;
  date?: Maybe<Scalars['String']>;
  hospitalizedCurrently?: Maybe<Scalars['Int']>;
  inIcuCurrently?: Maybe<Scalars['Int']>;
  inpatientBedsCapacity?: Maybe<Scalars['Int']>;
  inpatientBedsUsed?: Maybe<Scalars['Int']>;
};

/**
 * A condition to be used against `UsHospitalization` object types. All fields are
 * tested for equality and combined with a logical ‘and.’
 */
export type UsHospitalizationCondition = {
  /** Checks for equality with the object’s `adultIcuBedUsed` field. */
  adultIcuBedUsed?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `adultIcuBedsCapacity` field. */
  adultIcuBedsCapacity?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `date` field. */
  date?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `hospitalizedCurrently` field. */
  hospitalizedCurrently?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `inIcuCurrently` field. */
  inIcuCurrently?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `inpatientBedsCapacity` field. */
  inpatientBedsCapacity?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `inpatientBedsUsed` field. */
  inpatientBedsUsed?: Maybe<Scalars['Int']>;
};

/** An input for mutations affecting `UsHospitalization` */
export type UsHospitalizationInput = {
  adultIcuBedUsed?: Maybe<Scalars['Int']>;
  adultIcuBedsCapacity?: Maybe<Scalars['Int']>;
  date?: Maybe<Scalars['String']>;
  hospitalizedCurrently?: Maybe<Scalars['Int']>;
  inIcuCurrently?: Maybe<Scalars['Int']>;
  inpatientBedsCapacity?: Maybe<Scalars['Int']>;
  inpatientBedsUsed?: Maybe<Scalars['Int']>;
};

/** A connection to a list of `UsHospitalization` values. */
export type UsHospitalizationsConnection = {
  __typename?: 'UsHospitalizationsConnection';
  /** A list of edges which contains the `UsHospitalization` and cursor to aid in pagination. */
  edges: Array<UsHospitalizationsEdge>;
  /** A list of `UsHospitalization` objects. */
  nodes: Array<Maybe<UsHospitalization>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  /** The count of *all* `UsHospitalization` you could get from the connection. */
  totalCount: Scalars['Int'];
};

/** A `UsHospitalization` edge in the connection. */
export type UsHospitalizationsEdge = {
  __typename?: 'UsHospitalizationsEdge';
  /** A cursor for use in pagination. */
  cursor?: Maybe<Scalars['Cursor']>;
  /** The `UsHospitalization` at the end of the edge. */
  node?: Maybe<UsHospitalization>;
};

/** Methods to use when ordering `UsHospitalization`. */
export enum UsHospitalizationsOrderBy {
  AdultIcuBedsCapacityAsc = 'ADULT_ICU_BEDS_CAPACITY_ASC',
  AdultIcuBedsCapacityDesc = 'ADULT_ICU_BEDS_CAPACITY_DESC',
  AdultIcuBedUsedAsc = 'ADULT_ICU_BED_USED_ASC',
  AdultIcuBedUsedDesc = 'ADULT_ICU_BED_USED_DESC',
  DateAsc = 'DATE_ASC',
  DateDesc = 'DATE_DESC',
  HospitalizedCurrentlyAsc = 'HOSPITALIZED_CURRENTLY_ASC',
  HospitalizedCurrentlyDesc = 'HOSPITALIZED_CURRENTLY_DESC',
  InpatientBedsCapacityAsc = 'INPATIENT_BEDS_CAPACITY_ASC',
  InpatientBedsCapacityDesc = 'INPATIENT_BEDS_CAPACITY_DESC',
  InpatientBedsUsedAsc = 'INPATIENT_BEDS_USED_ASC',
  InpatientBedsUsedDesc = 'INPATIENT_BEDS_USED_DESC',
  InIcuCurrentlyAsc = 'IN_ICU_CURRENTLY_ASC',
  InIcuCurrentlyDesc = 'IN_ICU_CURRENTLY_DESC',
  Natural = 'NATURAL'
}

/** A connection to a list of `UsSummary` values. */
export type UsSummariesConnection = {
  __typename?: 'UsSummariesConnection';
  /** A list of edges which contains the `UsSummary` and cursor to aid in pagination. */
  edges: Array<UsSummariesEdge>;
  /** A list of `UsSummary` objects. */
  nodes: Array<Maybe<UsSummary>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  /** The count of *all* `UsSummary` you could get from the connection. */
  totalCount: Scalars['Int'];
};

/** A `UsSummary` edge in the connection. */
export type UsSummariesEdge = {
  __typename?: 'UsSummariesEdge';
  /** A cursor for use in pagination. */
  cursor?: Maybe<Scalars['Cursor']>;
  /** The `UsSummary` at the end of the edge. */
  node?: Maybe<UsSummary>;
};

/** Methods to use when ordering `UsSummary`. */
export enum UsSummariesOrderBy {
  AdultIcuBedsCapacityAsc = 'ADULT_ICU_BEDS_CAPACITY_ASC',
  AdultIcuBedsCapacityDesc = 'ADULT_ICU_BEDS_CAPACITY_DESC',
  AdultIcuBedUsedAsc = 'ADULT_ICU_BED_USED_ASC',
  AdultIcuBedUsedDesc = 'ADULT_ICU_BED_USED_DESC',
  ConfirmedCasesAsc = 'CONFIRMED_CASES_ASC',
  ConfirmedCasesDesc = 'CONFIRMED_CASES_DESC',
  ConfirmedIncrease_14DaysAsc = 'CONFIRMED_INCREASE_14DAYS_ASC',
  ConfirmedIncrease_14DaysDesc = 'CONFIRMED_INCREASE_14DAYS_DESC',
  ConfirmedIncreaseAsc = 'CONFIRMED_INCREASE_ASC',
  ConfirmedIncreaseDesc = 'CONFIRMED_INCREASE_DESC',
  HospitalizedCurrentlyAsc = 'HOSPITALIZED_CURRENTLY_ASC',
  HospitalizedCurrentlyDesc = 'HOSPITALIZED_CURRENTLY_DESC',
  InconclusiveAsc = 'INCONCLUSIVE_ASC',
  InconclusiveDesc = 'INCONCLUSIVE_DESC',
  InconclusiveIncreaseAsc = 'INCONCLUSIVE_INCREASE_ASC',
  InconclusiveIncreaseDesc = 'INCONCLUSIVE_INCREASE_DESC',
  InpatientBedsCapacityAsc = 'INPATIENT_BEDS_CAPACITY_ASC',
  InpatientBedsCapacityDesc = 'INPATIENT_BEDS_CAPACITY_DESC',
  InpatientBedsUsedAsc = 'INPATIENT_BEDS_USED_ASC',
  InpatientBedsUsedDesc = 'INPATIENT_BEDS_USED_DESC',
  InIcuCurrentlyAsc = 'IN_ICU_CURRENTLY_ASC',
  InIcuCurrentlyDesc = 'IN_ICU_CURRENTLY_DESC',
  Natural = 'NATURAL',
  NegativeAsc = 'NEGATIVE_ASC',
  NegativeDesc = 'NEGATIVE_DESC',
  NegativeIncreaseAsc = 'NEGATIVE_INCREASE_ASC',
  NegativeIncreaseDesc = 'NEGATIVE_INCREASE_DESC',
  PositiveAsc = 'POSITIVE_ASC',
  PositiveDesc = 'POSITIVE_DESC',
  PositiveIncreaseAsc = 'POSITIVE_INCREASE_ASC',
  PositiveIncreaseDesc = 'POSITIVE_INCREASE_DESC',
  TotalTestResultsAsc = 'TOTAL_TEST_RESULTS_ASC',
  TotalTestResultsDesc = 'TOTAL_TEST_RESULTS_DESC'
}

export type UsSummary = {
  __typename?: 'UsSummary';
  adultIcuBedUsed?: Maybe<Scalars['Int']>;
  adultIcuBedsCapacity?: Maybe<Scalars['Int']>;
  confirmedCases?: Maybe<Scalars['Int']>;
  confirmedIncrease?: Maybe<Scalars['Int']>;
  confirmedIncrease14Days?: Maybe<Scalars['Int']>;
  hospitalizedCurrently?: Maybe<Scalars['Int']>;
  inIcuCurrently?: Maybe<Scalars['Int']>;
  inconclusive?: Maybe<Scalars['Int']>;
  inconclusiveIncrease?: Maybe<Scalars['Int']>;
  inpatientBedsCapacity?: Maybe<Scalars['Int']>;
  inpatientBedsUsed?: Maybe<Scalars['Int']>;
  negative?: Maybe<Scalars['Int']>;
  negativeIncrease?: Maybe<Scalars['Int']>;
  positive?: Maybe<Scalars['Int']>;
  positiveIncrease?: Maybe<Scalars['Int']>;
  totalTestResults?: Maybe<Scalars['Int']>;
};

/**
 * A condition to be used against `UsSummary` object types. All fields are tested
 * for equality and combined with a logical ‘and.’
 */
export type UsSummaryCondition = {
  /** Checks for equality with the object’s `adultIcuBedUsed` field. */
  adultIcuBedUsed?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `adultIcuBedsCapacity` field. */
  adultIcuBedsCapacity?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `confirmedCases` field. */
  confirmedCases?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `confirmedIncrease` field. */
  confirmedIncrease?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `confirmedIncrease14Days` field. */
  confirmedIncrease14Days?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `hospitalizedCurrently` field. */
  hospitalizedCurrently?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `inIcuCurrently` field. */
  inIcuCurrently?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `inconclusive` field. */
  inconclusive?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `inconclusiveIncrease` field. */
  inconclusiveIncrease?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `inpatientBedsCapacity` field. */
  inpatientBedsCapacity?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `inpatientBedsUsed` field. */
  inpatientBedsUsed?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `negative` field. */
  negative?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `negativeIncrease` field. */
  negativeIncrease?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `positive` field. */
  positive?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `positiveIncrease` field. */
  positiveIncrease?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `totalTestResults` field. */
  totalTestResults?: Maybe<Scalars['Int']>;
};

/** An input for mutations affecting `UsSummary` */
export type UsSummaryInput = {
  adultIcuBedUsed?: Maybe<Scalars['Int']>;
  adultIcuBedsCapacity?: Maybe<Scalars['Int']>;
  confirmedCases?: Maybe<Scalars['Int']>;
  confirmedIncrease?: Maybe<Scalars['Int']>;
  confirmedIncrease14Days?: Maybe<Scalars['Int']>;
  hospitalizedCurrently?: Maybe<Scalars['Int']>;
  inIcuCurrently?: Maybe<Scalars['Int']>;
  inconclusive?: Maybe<Scalars['Int']>;
  inconclusiveIncrease?: Maybe<Scalars['Int']>;
  inpatientBedsCapacity?: Maybe<Scalars['Int']>;
  inpatientBedsUsed?: Maybe<Scalars['Int']>;
  negative?: Maybe<Scalars['Int']>;
  negativeIncrease?: Maybe<Scalars['Int']>;
  positive?: Maybe<Scalars['Int']>;
  positiveIncrease?: Maybe<Scalars['Int']>;
  totalTestResults?: Maybe<Scalars['Int']>;
};

export type UsSummaryView = {
  __typename?: 'UsSummaryView';
  confirmedCases?: Maybe<Scalars['Int']>;
  confirmedIncrease?: Maybe<Scalars['Int']>;
  confirmedIncrease14Days?: Maybe<Scalars['Int']>;
};

/**
 * A condition to be used against `UsSummaryView` object types. All fields are
 * tested for equality and combined with a logical ‘and.’
 */
export type UsSummaryViewCondition = {
  /** Checks for equality with the object’s `confirmedCases` field. */
  confirmedCases?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `confirmedIncrease` field. */
  confirmedIncrease?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `confirmedIncrease14Days` field. */
  confirmedIncrease14Days?: Maybe<Scalars['Int']>;
};

/** A connection to a list of `UsSummaryView` values. */
export type UsSummaryViewsConnection = {
  __typename?: 'UsSummaryViewsConnection';
  /** A list of edges which contains the `UsSummaryView` and cursor to aid in pagination. */
  edges: Array<UsSummaryViewsEdge>;
  /** A list of `UsSummaryView` objects. */
  nodes: Array<Maybe<UsSummaryView>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  /** The count of *all* `UsSummaryView` you could get from the connection. */
  totalCount: Scalars['Int'];
};

/** A `UsSummaryView` edge in the connection. */
export type UsSummaryViewsEdge = {
  __typename?: 'UsSummaryViewsEdge';
  /** A cursor for use in pagination. */
  cursor?: Maybe<Scalars['Cursor']>;
  /** The `UsSummaryView` at the end of the edge. */
  node?: Maybe<UsSummaryView>;
};

/** Methods to use when ordering `UsSummaryView`. */
export enum UsSummaryViewsOrderBy {
  ConfirmedCasesAsc = 'CONFIRMED_CASES_ASC',
  ConfirmedCasesDesc = 'CONFIRMED_CASES_DESC',
  ConfirmedIncrease_14DaysAsc = 'CONFIRMED_INCREASE_14DAYS_ASC',
  ConfirmedIncrease_14DaysDesc = 'CONFIRMED_INCREASE_14DAYS_DESC',
  ConfirmedIncreaseAsc = 'CONFIRMED_INCREASE_ASC',
  ConfirmedIncreaseDesc = 'CONFIRMED_INCREASE_DESC',
  Natural = 'NATURAL'
}

export type UsTesting = {
  __typename?: 'UsTesting';
  date?: Maybe<Scalars['String']>;
  inconclusive?: Maybe<Scalars['Int']>;
  inconclusiveIncrease?: Maybe<Scalars['Int']>;
  negative?: Maybe<Scalars['Int']>;
  negativeIncrease?: Maybe<Scalars['Int']>;
  positive?: Maybe<Scalars['Int']>;
  positiveIncrease?: Maybe<Scalars['Int']>;
  stateName?: Maybe<Scalars['String']>;
  totalTestResults?: Maybe<Scalars['Int']>;
  totalTestResultsIncrease?: Maybe<Scalars['Int']>;
};

/**
 * A condition to be used against `UsTesting` object types. All fields are tested
 * for equality and combined with a logical ‘and.’
 */
export type UsTestingCondition = {
  /** Checks for equality with the object’s `date` field. */
  date?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `inconclusive` field. */
  inconclusive?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `inconclusiveIncrease` field. */
  inconclusiveIncrease?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `negative` field. */
  negative?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `negativeIncrease` field. */
  negativeIncrease?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `positive` field. */
  positive?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `positiveIncrease` field. */
  positiveIncrease?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `stateName` field. */
  stateName?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `totalTestResults` field. */
  totalTestResults?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `totalTestResultsIncrease` field. */
  totalTestResultsIncrease?: Maybe<Scalars['Int']>;
};

/** An input for mutations affecting `UsTesting` */
export type UsTestingInput = {
  date?: Maybe<Scalars['String']>;
  inconclusive?: Maybe<Scalars['Int']>;
  inconclusiveIncrease?: Maybe<Scalars['Int']>;
  negative?: Maybe<Scalars['Int']>;
  negativeIncrease?: Maybe<Scalars['Int']>;
  positive?: Maybe<Scalars['Int']>;
  positiveIncrease?: Maybe<Scalars['Int']>;
  stateName?: Maybe<Scalars['String']>;
  totalTestResults?: Maybe<Scalars['Int']>;
  totalTestResultsIncrease?: Maybe<Scalars['Int']>;
};

/** A connection to a list of `UsTesting` values. */
export type UsTestingsConnection = {
  __typename?: 'UsTestingsConnection';
  /** A list of edges which contains the `UsTesting` and cursor to aid in pagination. */
  edges: Array<UsTestingsEdge>;
  /** A list of `UsTesting` objects. */
  nodes: Array<Maybe<UsTesting>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  /** The count of *all* `UsTesting` you could get from the connection. */
  totalCount: Scalars['Int'];
};

/** A `UsTesting` edge in the connection. */
export type UsTestingsEdge = {
  __typename?: 'UsTestingsEdge';
  /** A cursor for use in pagination. */
  cursor?: Maybe<Scalars['Cursor']>;
  /** The `UsTesting` at the end of the edge. */
  node?: Maybe<UsTesting>;
};

/** Methods to use when ordering `UsTesting`. */
export enum UsTestingsOrderBy {
  DateAsc = 'DATE_ASC',
  DateDesc = 'DATE_DESC',
  InconclusiveAsc = 'INCONCLUSIVE_ASC',
  InconclusiveDesc = 'INCONCLUSIVE_DESC',
  InconclusiveIncreaseAsc = 'INCONCLUSIVE_INCREASE_ASC',
  InconclusiveIncreaseDesc = 'INCONCLUSIVE_INCREASE_DESC',
  Natural = 'NATURAL',
  NegativeAsc = 'NEGATIVE_ASC',
  NegativeDesc = 'NEGATIVE_DESC',
  NegativeIncreaseAsc = 'NEGATIVE_INCREASE_ASC',
  NegativeIncreaseDesc = 'NEGATIVE_INCREASE_DESC',
  PositiveAsc = 'POSITIVE_ASC',
  PositiveDesc = 'POSITIVE_DESC',
  PositiveIncreaseAsc = 'POSITIVE_INCREASE_ASC',
  PositiveIncreaseDesc = 'POSITIVE_INCREASE_DESC',
  StateNameAsc = 'STATE_NAME_ASC',
  StateNameDesc = 'STATE_NAME_DESC',
  TotalTestResultsAsc = 'TOTAL_TEST_RESULTS_ASC',
  TotalTestResultsDesc = 'TOTAL_TEST_RESULTS_DESC',
  TotalTestResultsIncreaseAsc = 'TOTAL_TEST_RESULTS_INCREASE_ASC',
  TotalTestResultsIncreaseDesc = 'TOTAL_TEST_RESULTS_INCREASE_DESC'
}

export type StateByFipsQueryVariables = Exact<{
  fips?: Maybe<Scalars['String']>;
}>;


export type StateByFipsQuery = { __typename?: 'Query', allFipsCodeStates?: Maybe<{ __typename?: 'FipsCodeStatesConnection', nodes: Array<Maybe<{ __typename?: 'FipsCodeState', statePostalAbbreviation?: Maybe<string>, stateName?: Maybe<string>, stateGnisid?: Maybe<string> }>> }> };

export type StatesQueryVariables = Exact<{ [key: string]: never; }>;


export type StatesQuery = { __typename?: 'Query', allFipsCodeStates?: Maybe<{ __typename?: 'FipsCodeStatesConnection', nodes: Array<Maybe<{ __typename?: 'FipsCodeState', statePostalAbbreviation?: Maybe<string>, stateName?: Maybe<string>, stateGnisid?: Maybe<string>, fipsCodeCountiesByStateFipsCode: { __typename?: 'FipsCodeCountiesConnection', nodes: Array<Maybe<{ __typename?: 'FipsCodeCounty', areaName?: Maybe<string> }>> } }>> }> };

export type UsStatesTestingTableQueryVariables = Exact<{ [key: string]: never; }>;


export type UsStatesTestingTableQuery = { __typename?: 'Query', allStateSummaryViews?: Maybe<{ __typename?: 'StateSummaryViewsConnection', nodes: Array<Maybe<{ __typename?: 'StateSummaryView', stateName?: Maybe<string>, stateFipsCode?: Maybe<string>, population?: Maybe<number>, negative?: Maybe<number>, positive?: Maybe<number>, positiveIncrease?: Maybe<number>, negativeIncrease?: Maybe<number>, totalTestResults?: Maybe<number> }>> }> };

export type UsCasesQueryVariables = Exact<{ [key: string]: never; }>;


export type UsCasesQuery = { __typename?: 'Query', allUsCasesAlls?: Maybe<{ __typename?: 'UsCasesAllsConnection', nodes: Array<Maybe<{ __typename?: 'UsCasesAll', date?: Maybe<string>, confirmedCases?: Maybe<number>, deaths?: Maybe<number> }>> }> };

export type UsStatesCasesTableQueryVariables = Exact<{ [key: string]: never; }>;


export type UsStatesCasesTableQuery = { __typename?: 'Query', allStateSummaryViews?: Maybe<{ __typename?: 'StateSummaryViewsConnection', nodes: Array<Maybe<{ __typename?: 'StateSummaryView', stateName?: Maybe<string>, stateFipsCode?: Maybe<string>, confirmedCases?: Maybe<number>, confirmedIncrease?: Maybe<number>, deaths?: Maybe<number>, deathIncrease?: Maybe<number>, population?: Maybe<number> }>> }> };

export type UsSubRegionsQueryVariables = Exact<{ [key: string]: never; }>;


export type UsSubRegionsQuery = { __typename?: 'Query', allFipsCodeStates?: Maybe<{ __typename?: 'FipsCodeStatesConnection', nodes: Array<Maybe<{ __typename?: 'FipsCodeState', statePostalAbbreviation?: Maybe<string>, stateName?: Maybe<string>, stateGnisid?: Maybe<string>, stateCasesAllsByStateFipsCode: { __typename?: 'StateCasesAllsConnection', nodes: Array<Maybe<{ __typename?: 'StateCasesAll', date?: Maybe<string>, stateName?: Maybe<string>, stateFipsCode?: Maybe<string>, confirmedCases?: Maybe<number>, deaths?: Maybe<number> }>> } }>> }> };


export const StateByFipsDocument = gql`
    query StateByFips($fips: String) {
  allFipsCodeStates(condition: {stateFipsCode: $fips}) {
    nodes {
      statePostalAbbreviation
      stateName
      stateGnisid
    }
  }
}
    `;

/**
 * __useStateByFipsQuery__
 *
 * To run a query within a React component, call `useStateByFipsQuery` and pass it any options that fit your needs.
 * When your component renders, `useStateByFipsQuery` returns an object from Apollo Client that contains loading, error, and data properties
 * you can use to render your UI.
 *
 * @param baseOptions options that will be passed into the query, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options;
 *
 * @example
 * const { data, loading, error } = useStateByFipsQuery({
 *   variables: {
 *      fips: // value for 'fips'
 *   },
 * });
 */
export function useStateByFipsQuery(baseOptions?: Apollo.QueryHookOptions<StateByFipsQuery, StateByFipsQueryVariables>) {
        const options = {...defaultOptions, ...baseOptions}
        return Apollo.useQuery<StateByFipsQuery, StateByFipsQueryVariables>(StateByFipsDocument, options);
      }
export function useStateByFipsLazyQuery(baseOptions?: Apollo.LazyQueryHookOptions<StateByFipsQuery, StateByFipsQueryVariables>) {
          const options = {...defaultOptions, ...baseOptions}
          return Apollo.useLazyQuery<StateByFipsQuery, StateByFipsQueryVariables>(StateByFipsDocument, options);
        }
export type StateByFipsQueryHookResult = ReturnType<typeof useStateByFipsQuery>;
export type StateByFipsLazyQueryHookResult = ReturnType<typeof useStateByFipsLazyQuery>;
export type StateByFipsQueryResult = Apollo.QueryResult<StateByFipsQuery, StateByFipsQueryVariables>;
export const StatesDocument = gql`
    query States {
  allFipsCodeStates {
    nodes {
      statePostalAbbreviation
      stateName
      stateGnisid
      fipsCodeCountiesByStateFipsCode {
        nodes {
          areaName
        }
      }
    }
  }
}
    `;

/**
 * __useStatesQuery__
 *
 * To run a query within a React component, call `useStatesQuery` and pass it any options that fit your needs.
 * When your component renders, `useStatesQuery` returns an object from Apollo Client that contains loading, error, and data properties
 * you can use to render your UI.
 *
 * @param baseOptions options that will be passed into the query, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options;
 *
 * @example
 * const { data, loading, error } = useStatesQuery({
 *   variables: {
 *   },
 * });
 */
export function useStatesQuery(baseOptions?: Apollo.QueryHookOptions<StatesQuery, StatesQueryVariables>) {
        const options = {...defaultOptions, ...baseOptions}
        return Apollo.useQuery<StatesQuery, StatesQueryVariables>(StatesDocument, options);
      }
export function useStatesLazyQuery(baseOptions?: Apollo.LazyQueryHookOptions<StatesQuery, StatesQueryVariables>) {
          const options = {...defaultOptions, ...baseOptions}
          return Apollo.useLazyQuery<StatesQuery, StatesQueryVariables>(StatesDocument, options);
        }
export type StatesQueryHookResult = ReturnType<typeof useStatesQuery>;
export type StatesLazyQueryHookResult = ReturnType<typeof useStatesLazyQuery>;
export type StatesQueryResult = Apollo.QueryResult<StatesQuery, StatesQueryVariables>;
export const UsStatesTestingTableDocument = gql`
    query USStatesTestingTable {
  allStateSummaryViews {
    nodes {
      stateName
      stateFipsCode
      population
      negative
      positive
      positiveIncrease
      negativeIncrease
      totalTestResults
    }
  }
}
    `;

/**
 * __useUsStatesTestingTableQuery__
 *
 * To run a query within a React component, call `useUsStatesTestingTableQuery` and pass it any options that fit your needs.
 * When your component renders, `useUsStatesTestingTableQuery` returns an object from Apollo Client that contains loading, error, and data properties
 * you can use to render your UI.
 *
 * @param baseOptions options that will be passed into the query, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options;
 *
 * @example
 * const { data, loading, error } = useUsStatesTestingTableQuery({
 *   variables: {
 *   },
 * });
 */
export function useUsStatesTestingTableQuery(baseOptions?: Apollo.QueryHookOptions<UsStatesTestingTableQuery, UsStatesTestingTableQueryVariables>) {
        const options = {...defaultOptions, ...baseOptions}
        return Apollo.useQuery<UsStatesTestingTableQuery, UsStatesTestingTableQueryVariables>(UsStatesTestingTableDocument, options);
      }
export function useUsStatesTestingTableLazyQuery(baseOptions?: Apollo.LazyQueryHookOptions<UsStatesTestingTableQuery, UsStatesTestingTableQueryVariables>) {
          const options = {...defaultOptions, ...baseOptions}
          return Apollo.useLazyQuery<UsStatesTestingTableQuery, UsStatesTestingTableQueryVariables>(UsStatesTestingTableDocument, options);
        }
export type UsStatesTestingTableQueryHookResult = ReturnType<typeof useUsStatesTestingTableQuery>;
export type UsStatesTestingTableLazyQueryHookResult = ReturnType<typeof useUsStatesTestingTableLazyQuery>;
export type UsStatesTestingTableQueryResult = Apollo.QueryResult<UsStatesTestingTableQuery, UsStatesTestingTableQueryVariables>;
export const UsCasesDocument = gql`
    query UsCases {
  allUsCasesAlls {
    nodes {
      date
      confirmedCases
      deaths
    }
  }
}
    `;

/**
 * __useUsCasesQuery__
 *
 * To run a query within a React component, call `useUsCasesQuery` and pass it any options that fit your needs.
 * When your component renders, `useUsCasesQuery` returns an object from Apollo Client that contains loading, error, and data properties
 * you can use to render your UI.
 *
 * @param baseOptions options that will be passed into the query, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options;
 *
 * @example
 * const { data, loading, error } = useUsCasesQuery({
 *   variables: {
 *   },
 * });
 */
export function useUsCasesQuery(baseOptions?: Apollo.QueryHookOptions<UsCasesQuery, UsCasesQueryVariables>) {
        const options = {...defaultOptions, ...baseOptions}
        return Apollo.useQuery<UsCasesQuery, UsCasesQueryVariables>(UsCasesDocument, options);
      }
export function useUsCasesLazyQuery(baseOptions?: Apollo.LazyQueryHookOptions<UsCasesQuery, UsCasesQueryVariables>) {
          const options = {...defaultOptions, ...baseOptions}
          return Apollo.useLazyQuery<UsCasesQuery, UsCasesQueryVariables>(UsCasesDocument, options);
        }
export type UsCasesQueryHookResult = ReturnType<typeof useUsCasesQuery>;
export type UsCasesLazyQueryHookResult = ReturnType<typeof useUsCasesLazyQuery>;
export type UsCasesQueryResult = Apollo.QueryResult<UsCasesQuery, UsCasesQueryVariables>;
export const UsStatesCasesTableDocument = gql`
    query USStatesCasesTable {
  allStateSummaryViews {
    nodes {
      stateName
      stateFipsCode
      confirmedCases
      confirmedIncrease
      deaths
      deathIncrease
      population
    }
  }
}
    `;

/**
 * __useUsStatesCasesTableQuery__
 *
 * To run a query within a React component, call `useUsStatesCasesTableQuery` and pass it any options that fit your needs.
 * When your component renders, `useUsStatesCasesTableQuery` returns an object from Apollo Client that contains loading, error, and data properties
 * you can use to render your UI.
 *
 * @param baseOptions options that will be passed into the query, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options;
 *
 * @example
 * const { data, loading, error } = useUsStatesCasesTableQuery({
 *   variables: {
 *   },
 * });
 */
export function useUsStatesCasesTableQuery(baseOptions?: Apollo.QueryHookOptions<UsStatesCasesTableQuery, UsStatesCasesTableQueryVariables>) {
        const options = {...defaultOptions, ...baseOptions}
        return Apollo.useQuery<UsStatesCasesTableQuery, UsStatesCasesTableQueryVariables>(UsStatesCasesTableDocument, options);
      }
export function useUsStatesCasesTableLazyQuery(baseOptions?: Apollo.LazyQueryHookOptions<UsStatesCasesTableQuery, UsStatesCasesTableQueryVariables>) {
          const options = {...defaultOptions, ...baseOptions}
          return Apollo.useLazyQuery<UsStatesCasesTableQuery, UsStatesCasesTableQueryVariables>(UsStatesCasesTableDocument, options);
        }
export type UsStatesCasesTableQueryHookResult = ReturnType<typeof useUsStatesCasesTableQuery>;
export type UsStatesCasesTableLazyQueryHookResult = ReturnType<typeof useUsStatesCasesTableLazyQuery>;
export type UsStatesCasesTableQueryResult = Apollo.QueryResult<UsStatesCasesTableQuery, UsStatesCasesTableQueryVariables>;
export const UsSubRegionsDocument = gql`
    query USSubRegions {
  allFipsCodeStates {
    nodes {
      statePostalAbbreviation
      stateName
      stateGnisid
      stateCasesAllsByStateFipsCode(orderBy: DATE_DESC, first: 180) {
        nodes {
          date
          stateName
          stateFipsCode
          confirmedCases
          deaths
        }
      }
    }
  }
}
    `;

/**
 * __useUsSubRegionsQuery__
 *
 * To run a query within a React component, call `useUsSubRegionsQuery` and pass it any options that fit your needs.
 * When your component renders, `useUsSubRegionsQuery` returns an object from Apollo Client that contains loading, error, and data properties
 * you can use to render your UI.
 *
 * @param baseOptions options that will be passed into the query, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options;
 *
 * @example
 * const { data, loading, error } = useUsSubRegionsQuery({
 *   variables: {
 *   },
 * });
 */
export function useUsSubRegionsQuery(baseOptions?: Apollo.QueryHookOptions<UsSubRegionsQuery, UsSubRegionsQueryVariables>) {
        const options = {...defaultOptions, ...baseOptions}
        return Apollo.useQuery<UsSubRegionsQuery, UsSubRegionsQueryVariables>(UsSubRegionsDocument, options);
      }
export function useUsSubRegionsLazyQuery(baseOptions?: Apollo.LazyQueryHookOptions<UsSubRegionsQuery, UsSubRegionsQueryVariables>) {
          const options = {...defaultOptions, ...baseOptions}
          return Apollo.useLazyQuery<UsSubRegionsQuery, UsSubRegionsQueryVariables>(UsSubRegionsDocument, options);
        }
export type UsSubRegionsQueryHookResult = ReturnType<typeof useUsSubRegionsQuery>;
export type UsSubRegionsLazyQueryHookResult = ReturnType<typeof useUsSubRegionsLazyQuery>;
export type UsSubRegionsQueryResult = Apollo.QueryResult<UsSubRegionsQuery, UsSubRegionsQueryVariables>;