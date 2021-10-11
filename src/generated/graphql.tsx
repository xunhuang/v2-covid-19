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
  /**
   * A signed eight-byte integer. The upper big integer values are greater than the
   * max value for a JavaScript number. Therefore all big integers will be output as
   * strings and not numbers.
   */
  BigInt: any;
  /** A location in a connection that can be used for resuming pagination. */
  Cursor: any;
};

export type CountyCasesAll = {
  __typename?: 'CountyCasesAll';
  confirmedCases?: Maybe<Scalars['Int']>;
  county?: Maybe<Scalars['String']>;
  countyFipsCode?: Maybe<Scalars['String']>;
  /** Reads a single `CountySummaryView` that is related to this `CountyCasesAll`. */
  countySummaryViewByCountyFipsCode?: Maybe<CountySummaryView>;
  date?: Maybe<Scalars['String']>;
  deaths?: Maybe<Scalars['Int']>;
  stateFipsCode?: Maybe<Scalars['String']>;
  stateName?: Maybe<Scalars['String']>;
  /** Reads a single `StateSummaryView` that is related to this `CountyCasesAll`. */
  stateSummaryViewByStateFipsCode?: Maybe<StateSummaryView>;
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

export type CountyMeta = {
  __typename?: 'CountyMeta';
  countyFipsCode?: Maybe<Scalars['String']>;
  countyName?: Maybe<Scalars['String']>;
  msaId?: Maybe<Scalars['String']>;
  msaName?: Maybe<Scalars['String']>;
  msaUrlName?: Maybe<Scalars['String']>;
  population?: Maybe<Scalars['Int']>;
  stateAbbr?: Maybe<Scalars['String']>;
  stateFipsCode?: Maybe<Scalars['String']>;
  stateName?: Maybe<Scalars['String']>;
  /** Reads a single `StateSummaryView` that is related to this `CountyMeta`. */
  stateSummaryViewByStateFipsCode?: Maybe<StateSummaryView>;
};

/**
 * A condition to be used against `CountyMeta` object types. All fields are tested
 * for equality and combined with a logical ‘and.’
 */
export type CountyMetaCondition = {
  /** Checks for equality with the object’s `countyFipsCode` field. */
  countyFipsCode?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `countyName` field. */
  countyName?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `msaId` field. */
  msaId?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `msaName` field. */
  msaName?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `msaUrlName` field. */
  msaUrlName?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `population` field. */
  population?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `stateAbbr` field. */
  stateAbbr?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `stateFipsCode` field. */
  stateFipsCode?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `stateName` field. */
  stateName?: Maybe<Scalars['String']>;
};

/** An input for mutations affecting `CountyMeta` */
export type CountyMetaInput = {
  countyFipsCode?: Maybe<Scalars['String']>;
  countyName?: Maybe<Scalars['String']>;
  msaId?: Maybe<Scalars['String']>;
  msaName?: Maybe<Scalars['String']>;
  msaUrlName?: Maybe<Scalars['String']>;
  population?: Maybe<Scalars['Int']>;
  stateAbbr?: Maybe<Scalars['String']>;
  stateFipsCode?: Maybe<Scalars['String']>;
  stateName?: Maybe<Scalars['String']>;
};

/** A connection to a list of `CountyMeta` values. */
export type CountyMetasConnection = {
  __typename?: 'CountyMetasConnection';
  /** A list of edges which contains the `CountyMeta` and cursor to aid in pagination. */
  edges: Array<CountyMetasEdge>;
  /** A list of `CountyMeta` objects. */
  nodes: Array<Maybe<CountyMeta>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  /** The count of *all* `CountyMeta` you could get from the connection. */
  totalCount: Scalars['Int'];
};

/** A `CountyMeta` edge in the connection. */
export type CountyMetasEdge = {
  __typename?: 'CountyMetasEdge';
  /** A cursor for use in pagination. */
  cursor?: Maybe<Scalars['Cursor']>;
  /** The `CountyMeta` at the end of the edge. */
  node?: Maybe<CountyMeta>;
};

/** Methods to use when ordering `CountyMeta`. */
export enum CountyMetasOrderBy {
  CountyFipsCodeAsc = 'COUNTY_FIPS_CODE_ASC',
  CountyFipsCodeDesc = 'COUNTY_FIPS_CODE_DESC',
  CountyNameAsc = 'COUNTY_NAME_ASC',
  CountyNameDesc = 'COUNTY_NAME_DESC',
  MsaIdAsc = 'MSA_ID_ASC',
  MsaIdDesc = 'MSA_ID_DESC',
  MsaNameAsc = 'MSA_NAME_ASC',
  MsaNameDesc = 'MSA_NAME_DESC',
  MsaUrlNameAsc = 'MSA_URL_NAME_ASC',
  MsaUrlNameDesc = 'MSA_URL_NAME_DESC',
  Natural = 'NATURAL',
  PopulationAsc = 'POPULATION_ASC',
  PopulationDesc = 'POPULATION_DESC',
  StateAbbrAsc = 'STATE_ABBR_ASC',
  StateAbbrDesc = 'STATE_ABBR_DESC',
  StateFipsCodeAsc = 'STATE_FIPS_CODE_ASC',
  StateFipsCodeDesc = 'STATE_FIPS_CODE_DESC',
  StateNameAsc = 'STATE_NAME_ASC',
  StateNameDesc = 'STATE_NAME_DESC'
}

export type CountySummaryView = {
  __typename?: 'CountySummaryView';
  confirmedCases?: Maybe<Scalars['Int']>;
  confirmedIncrease?: Maybe<Scalars['Int']>;
  /** Reads and enables pagination through a set of `CountyCasesAll`. */
  countyCasesAllsByCountyFipsCode: CountyCasesAllsConnection;
  countyFipsCode?: Maybe<Scalars['String']>;
  countyName?: Maybe<Scalars['String']>;
  deathIncrease?: Maybe<Scalars['Int']>;
  deaths?: Maybe<Scalars['Int']>;
  population?: Maybe<Scalars['Int']>;
  stateFipsCode?: Maybe<Scalars['String']>;
  stateName?: Maybe<Scalars['String']>;
  /** Reads a single `StateSummaryView` that is related to this `CountySummaryView`. */
  stateSummaryViewByStateFipsCode?: Maybe<StateSummaryView>;
  updated?: Maybe<Scalars['String']>;
};


export type CountySummaryViewCountyCasesAllsByCountyFipsCodeArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<CountyCasesAllCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<CountyCasesAllsOrderBy>>;
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
  /** Checks for equality with the object’s `population` field. */
  population?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `stateFipsCode` field. */
  stateFipsCode?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `stateName` field. */
  stateName?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `updated` field. */
  updated?: Maybe<Scalars['String']>;
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
  PopulationAsc = 'POPULATION_ASC',
  PopulationDesc = 'POPULATION_DESC',
  StateFipsCodeAsc = 'STATE_FIPS_CODE_ASC',
  StateFipsCodeDesc = 'STATE_FIPS_CODE_DESC',
  StateNameAsc = 'STATE_NAME_ASC',
  StateNameDesc = 'STATE_NAME_DESC',
  UpdatedAsc = 'UPDATED_ASC',
  UpdatedDesc = 'UPDATED_DESC'
}

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
  /** Reads a single `CountySummaryView` that is related to this `CountyCasesAll`. */
  countySummaryViewByCountyFipsCode?: Maybe<CountySummaryView>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
  /** Reads a single `StateSummaryView` that is related to this `CountyCasesAll`. */
  stateSummaryViewByStateFipsCode?: Maybe<StateSummaryView>;
};


/** The output of our create `CountyCasesAll` mutation. */
export type CreateCountyCasesAllPayloadCountyCasesAllEdgeArgs = {
  orderBy?: Maybe<Array<CountyCasesAllsOrderBy>>;
};

/** All input for the create `CountyMeta` mutation. */
export type CreateCountyMetaInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `CountyMeta` to be created by this mutation. */
  countyMeta: CountyMetaInput;
};

/** The output of our create `CountyMeta` mutation. */
export type CreateCountyMetaPayload = {
  __typename?: 'CreateCountyMetaPayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `CountyMeta` that was created by this mutation. */
  countyMeta?: Maybe<CountyMeta>;
  /** An edge for our `CountyMeta`. May be used by Relay 1. */
  countyMetaEdge?: Maybe<CountyMetasEdge>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
  /** Reads a single `StateSummaryView` that is related to this `CountyMeta`. */
  stateSummaryViewByStateFipsCode?: Maybe<StateSummaryView>;
};


/** The output of our create `CountyMeta` mutation. */
export type CreateCountyMetaPayloadCountyMetaEdgeArgs = {
  orderBy?: Maybe<Array<CountyMetasOrderBy>>;
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

/** All input for the create `MsaMeta` mutation. */
export type CreateMsaMetaInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `MsaMeta` to be created by this mutation. */
  msaMeta: MsaMetaInput;
};

/** The output of our create `MsaMeta` mutation. */
export type CreateMsaMetaPayload = {
  __typename?: 'CreateMsaMetaPayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `MsaMeta` that was created by this mutation. */
  msaMeta?: Maybe<MsaMeta>;
  /** An edge for our `MsaMeta`. May be used by Relay 1. */
  msaMetaEdge?: Maybe<MsaMetasEdge>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
};


/** The output of our create `MsaMeta` mutation. */
export type CreateMsaMetaPayloadMsaMetaEdgeArgs = {
  orderBy?: Maybe<Array<MsaMetasOrderBy>>;
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
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
  /** The `StateCasesAll` that was created by this mutation. */
  stateCasesAll?: Maybe<StateCasesAll>;
  /** An edge for our `StateCasesAll`. May be used by Relay 1. */
  stateCasesAllEdge?: Maybe<StateCasesAllsEdge>;
  /** Reads a single `StateSummaryView` that is related to this `StateCasesAll`. */
  stateSummaryViewByStateFipsCode?: Maybe<StateSummaryView>;
};


/** The output of our create `StateCasesAll` mutation. */
export type CreateStateCasesAllPayloadStateCasesAllEdgeArgs = {
  orderBy?: Maybe<Array<StateCasesAllsOrderBy>>;
};

/** All input for the create `StateMeta` mutation. */
export type CreateStateMetaInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `StateMeta` to be created by this mutation. */
  stateMeta: StateMetaInput;
};

/** The output of our create `StateMeta` mutation. */
export type CreateStateMetaPayload = {
  __typename?: 'CreateStateMetaPayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
  /** The `StateMeta` that was created by this mutation. */
  stateMeta?: Maybe<StateMeta>;
  /** An edge for our `StateMeta`. May be used by Relay 1. */
  stateMetaEdge?: Maybe<StateMetasEdge>;
};


/** The output of our create `StateMeta` mutation. */
export type CreateStateMetaPayloadStateMetaEdgeArgs = {
  orderBy?: Maybe<Array<StateMetasOrderBy>>;
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
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
  /** Reads a single `StateSummaryView` that is related to this `StatesHospitalization`. */
  stateSummaryViewByStateFipsCode?: Maybe<StateSummaryView>;
  /** The `StatesHospitalization` that was created by this mutation. */
  statesHospitalization?: Maybe<StatesHospitalization>;
  /** An edge for our `StatesHospitalization`. May be used by Relay 1. */
  statesHospitalizationEdge?: Maybe<StatesHospitalizationsEdge>;
};


/** The output of our create `StatesHospitalization` mutation. */
export type CreateStatesHospitalizationPayloadStatesHospitalizationEdgeArgs = {
  orderBy?: Maybe<Array<StatesHospitalizationsOrderBy>>;
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
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
  /** Reads a single `StateSummaryView` that is related to this `StatesTesting`. */
  stateSummaryViewByStateFipsCode?: Maybe<StateSummaryView>;
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

export type MsaMeta = {
  __typename?: 'MsaMeta';
  msaId?: Maybe<Scalars['String']>;
  msaName?: Maybe<Scalars['String']>;
  msaUrlName?: Maybe<Scalars['String']>;
  population?: Maybe<Scalars['BigInt']>;
  stateFipsCode?: Maybe<Scalars['String']>;
  stateName?: Maybe<Scalars['String']>;
  statePostalAbbreviation?: Maybe<Scalars['String']>;
};

/** A condition to be used against `MsaMeta` object types. All fields are tested for equality and combined with a logical ‘and.’ */
export type MsaMetaCondition = {
  /** Checks for equality with the object’s `msaId` field. */
  msaId?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `msaName` field. */
  msaName?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `msaUrlName` field. */
  msaUrlName?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `population` field. */
  population?: Maybe<Scalars['BigInt']>;
  /** Checks for equality with the object’s `stateFipsCode` field. */
  stateFipsCode?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `stateName` field. */
  stateName?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `statePostalAbbreviation` field. */
  statePostalAbbreviation?: Maybe<Scalars['String']>;
};

/** An input for mutations affecting `MsaMeta` */
export type MsaMetaInput = {
  msaId?: Maybe<Scalars['String']>;
  msaName?: Maybe<Scalars['String']>;
  msaUrlName?: Maybe<Scalars['String']>;
  population?: Maybe<Scalars['BigInt']>;
  stateFipsCode?: Maybe<Scalars['String']>;
  stateName?: Maybe<Scalars['String']>;
  statePostalAbbreviation?: Maybe<Scalars['String']>;
};

/** A connection to a list of `MsaMeta` values. */
export type MsaMetasConnection = {
  __typename?: 'MsaMetasConnection';
  /** A list of edges which contains the `MsaMeta` and cursor to aid in pagination. */
  edges: Array<MsaMetasEdge>;
  /** A list of `MsaMeta` objects. */
  nodes: Array<Maybe<MsaMeta>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  /** The count of *all* `MsaMeta` you could get from the connection. */
  totalCount: Scalars['Int'];
};

/** A `MsaMeta` edge in the connection. */
export type MsaMetasEdge = {
  __typename?: 'MsaMetasEdge';
  /** A cursor for use in pagination. */
  cursor?: Maybe<Scalars['Cursor']>;
  /** The `MsaMeta` at the end of the edge. */
  node?: Maybe<MsaMeta>;
};

/** Methods to use when ordering `MsaMeta`. */
export enum MsaMetasOrderBy {
  MsaIdAsc = 'MSA_ID_ASC',
  MsaIdDesc = 'MSA_ID_DESC',
  MsaNameAsc = 'MSA_NAME_ASC',
  MsaNameDesc = 'MSA_NAME_DESC',
  MsaUrlNameAsc = 'MSA_URL_NAME_ASC',
  MsaUrlNameDesc = 'MSA_URL_NAME_DESC',
  Natural = 'NATURAL',
  PopulationAsc = 'POPULATION_ASC',
  PopulationDesc = 'POPULATION_DESC',
  StateFipsCodeAsc = 'STATE_FIPS_CODE_ASC',
  StateFipsCodeDesc = 'STATE_FIPS_CODE_DESC',
  StateNameAsc = 'STATE_NAME_ASC',
  StateNameDesc = 'STATE_NAME_DESC',
  StatePostalAbbreviationAsc = 'STATE_POSTAL_ABBREVIATION_ASC',
  StatePostalAbbreviationDesc = 'STATE_POSTAL_ABBREVIATION_DESC'
}

/** The root mutation type which contains root level fields which mutate data. */
export type Mutation = {
  __typename?: 'Mutation';
  /** Creates a single `CountyCasesAll`. */
  createCountyCasesAll?: Maybe<CreateCountyCasesAllPayload>;
  /** Creates a single `CountyMeta`. */
  createCountyMeta?: Maybe<CreateCountyMetaPayload>;
  /** Creates a single `MsaCasesAll`. */
  createMsaCasesAll?: Maybe<CreateMsaCasesAllPayload>;
  /** Creates a single `MsaMeta`. */
  createMsaMeta?: Maybe<CreateMsaMetaPayload>;
  /** Creates a single `StateCasesAll`. */
  createStateCasesAll?: Maybe<CreateStateCasesAllPayload>;
  /** Creates a single `StateMeta`. */
  createStateMeta?: Maybe<CreateStateMetaPayload>;
  /** Creates a single `StatesHospitalization`. */
  createStatesHospitalization?: Maybe<CreateStatesHospitalizationPayload>;
  /** Creates a single `StatesTesting`. */
  createStatesTesting?: Maybe<CreateStatesTestingPayload>;
  /** Creates a single `UsCasesAll`. */
  createUsCasesAll?: Maybe<CreateUsCasesAllPayload>;
  /** Creates a single `UsHospitalization`. */
  createUsHospitalization?: Maybe<CreateUsHospitalizationPayload>;
  /** Creates a single `UsTesting`. */
  createUsTesting?: Maybe<CreateUsTestingPayload>;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationCreateCountyCasesAllArgs = {
  input: CreateCountyCasesAllInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationCreateCountyMetaArgs = {
  input: CreateCountyMetaInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationCreateMsaCasesAllArgs = {
  input: CreateMsaCasesAllInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationCreateMsaMetaArgs = {
  input: CreateMsaMetaInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationCreateStateCasesAllArgs = {
  input: CreateStateCasesAllInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationCreateStateMetaArgs = {
  input: CreateStateMetaInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationCreateStatesHospitalizationArgs = {
  input: CreateStatesHospitalizationInput;
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
export type MutationCreateUsTestingArgs = {
  input: CreateUsTestingInput;
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
  /** Reads and enables pagination through a set of `CountyCasesAll`. */
  allCountyCasesAlls?: Maybe<CountyCasesAllsConnection>;
  /** Reads and enables pagination through a set of `CountyMeta`. */
  allCountyMetas?: Maybe<CountyMetasConnection>;
  /** Reads and enables pagination through a set of `CountySummaryView`. */
  allCountySummaryViews?: Maybe<CountySummaryViewsConnection>;
  /** Reads and enables pagination through a set of `MsaCasesAll`. */
  allMsaCasesAlls?: Maybe<MsaCasesAllsConnection>;
  /** Reads and enables pagination through a set of `MsaMeta`. */
  allMsaMetas?: Maybe<MsaMetasConnection>;
  /** Reads and enables pagination through a set of `StateCasesAll`. */
  allStateCasesAlls?: Maybe<StateCasesAllsConnection>;
  /** Reads and enables pagination through a set of `StateMeta`. */
  allStateMetas?: Maybe<StateMetasConnection>;
  /** Reads and enables pagination through a set of `StateSummaryView`. */
  allStateSummaryViews?: Maybe<StateSummaryViewsConnection>;
  /** Reads and enables pagination through a set of `StatesHospitalization`. */
  allStatesHospitalizations?: Maybe<StatesHospitalizationsConnection>;
  /** Reads and enables pagination through a set of `StatesTesting`. */
  allStatesTestings?: Maybe<StatesTestingsConnection>;
  /** Reads and enables pagination through a set of `UsCasesAll`. */
  allUsCasesAlls?: Maybe<UsCasesAllsConnection>;
  /** Reads and enables pagination through a set of `UsHospitalization`. */
  allUsHospitalizations?: Maybe<UsHospitalizationsConnection>;
  /** Reads and enables pagination through a set of `UsSummaryView`. */
  allUsSummaryViews?: Maybe<UsSummaryViewsConnection>;
  /** Reads and enables pagination through a set of `UsTesting`. */
  allUsTestings?: Maybe<UsTestingsConnection>;
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
export type QueryAllCountyMetasArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<CountyMetaCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<CountyMetasOrderBy>>;
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
export type QueryAllMsaMetasArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<MsaMetaCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<MsaMetasOrderBy>>;
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
export type QueryAllStateMetasArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<StateMetaCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<StateMetasOrderBy>>;
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
export type QueryNodeArgs = {
  nodeId: Scalars['ID'];
};

export type StateCasesAll = {
  __typename?: 'StateCasesAll';
  confirmedCases?: Maybe<Scalars['Int']>;
  date?: Maybe<Scalars['String']>;
  deaths?: Maybe<Scalars['Int']>;
  stateFipsCode?: Maybe<Scalars['String']>;
  stateName?: Maybe<Scalars['String']>;
  /** Reads a single `StateSummaryView` that is related to this `StateCasesAll`. */
  stateSummaryViewByStateFipsCode?: Maybe<StateSummaryView>;
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

export type StateMeta = {
  __typename?: 'StateMeta';
  population?: Maybe<Scalars['Int']>;
  stateAbbr?: Maybe<Scalars['String']>;
  stateFipsCode?: Maybe<Scalars['String']>;
  stateName?: Maybe<Scalars['String']>;
  /** Reads and enables pagination through a set of `StateSummaryView`. */
  stateSummaryViewsByStateFipsCode: StateSummaryViewsConnection;
};


export type StateMetaStateSummaryViewsByStateFipsCodeArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<StateSummaryViewCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<StateSummaryViewsOrderBy>>;
};

/**
 * A condition to be used against `StateMeta` object types. All fields are tested
 * for equality and combined with a logical ‘and.’
 */
export type StateMetaCondition = {
  /** Checks for equality with the object’s `population` field. */
  population?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `stateAbbr` field. */
  stateAbbr?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `stateFipsCode` field. */
  stateFipsCode?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `stateName` field. */
  stateName?: Maybe<Scalars['String']>;
};

/** An input for mutations affecting `StateMeta` */
export type StateMetaInput = {
  population?: Maybe<Scalars['Int']>;
  stateAbbr?: Maybe<Scalars['String']>;
  stateFipsCode?: Maybe<Scalars['String']>;
  stateName?: Maybe<Scalars['String']>;
};

/** A connection to a list of `StateMeta` values. */
export type StateMetasConnection = {
  __typename?: 'StateMetasConnection';
  /** A list of edges which contains the `StateMeta` and cursor to aid in pagination. */
  edges: Array<StateMetasEdge>;
  /** A list of `StateMeta` objects. */
  nodes: Array<Maybe<StateMeta>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  /** The count of *all* `StateMeta` you could get from the connection. */
  totalCount: Scalars['Int'];
};

/** A `StateMeta` edge in the connection. */
export type StateMetasEdge = {
  __typename?: 'StateMetasEdge';
  /** A cursor for use in pagination. */
  cursor?: Maybe<Scalars['Cursor']>;
  /** The `StateMeta` at the end of the edge. */
  node?: Maybe<StateMeta>;
};

/** Methods to use when ordering `StateMeta`. */
export enum StateMetasOrderBy {
  Natural = 'NATURAL',
  PopulationAsc = 'POPULATION_ASC',
  PopulationDesc = 'POPULATION_DESC',
  StateAbbrAsc = 'STATE_ABBR_ASC',
  StateAbbrDesc = 'STATE_ABBR_DESC',
  StateFipsCodeAsc = 'STATE_FIPS_CODE_ASC',
  StateFipsCodeDesc = 'STATE_FIPS_CODE_DESC',
  StateNameAsc = 'STATE_NAME_ASC',
  StateNameDesc = 'STATE_NAME_DESC'
}

export type StateSummaryView = {
  __typename?: 'StateSummaryView';
  confirmedCases?: Maybe<Scalars['Int']>;
  confirmedIncrease?: Maybe<Scalars['Int']>;
  /** Reads and enables pagination through a set of `CountyCasesAll`. */
  countyCasesAllsByStateFipsCode: CountyCasesAllsConnection;
  /** Reads and enables pagination through a set of `CountyMeta`. */
  countyMetasByStateFipsCode: CountyMetasConnection;
  /** Reads and enables pagination through a set of `CountySummaryView`. */
  countySummaryViewsByStateFipsCode: CountySummaryViewsConnection;
  deathIncrease?: Maybe<Scalars['Int']>;
  deaths?: Maybe<Scalars['Int']>;
  negative?: Maybe<Scalars['Int']>;
  negativeIncrease?: Maybe<Scalars['Int']>;
  population?: Maybe<Scalars['Int']>;
  positive?: Maybe<Scalars['Int']>;
  positiveIncrease?: Maybe<Scalars['Int']>;
  stateAbbr?: Maybe<Scalars['String']>;
  /** Reads and enables pagination through a set of `StateCasesAll`. */
  stateCasesAllsByStateFipsCode: StateCasesAllsConnection;
  stateFipsCode?: Maybe<Scalars['String']>;
  /** Reads a single `StateMeta` that is related to this `StateSummaryView`. */
  stateMetaByStateFipsCode?: Maybe<StateMeta>;
  stateName?: Maybe<Scalars['String']>;
  /** Reads and enables pagination through a set of `StatesHospitalization`. */
  statesHospitalizationsByStateFipsCode: StatesHospitalizationsConnection;
  /** Reads and enables pagination through a set of `StatesTesting`. */
  statesTestingsByStateFipsCode: StatesTestingsConnection;
  totalTestResults?: Maybe<Scalars['Int']>;
  updated?: Maybe<Scalars['String']>;
};


export type StateSummaryViewCountyCasesAllsByStateFipsCodeArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<CountyCasesAllCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<CountyCasesAllsOrderBy>>;
};


export type StateSummaryViewCountyMetasByStateFipsCodeArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<CountyMetaCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<CountyMetasOrderBy>>;
};


export type StateSummaryViewCountySummaryViewsByStateFipsCodeArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<CountySummaryViewCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<CountySummaryViewsOrderBy>>;
};


export type StateSummaryViewStateCasesAllsByStateFipsCodeArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<StateCasesAllCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<StateCasesAllsOrderBy>>;
};


export type StateSummaryViewStatesHospitalizationsByStateFipsCodeArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<StatesHospitalizationCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<StatesHospitalizationsOrderBy>>;
};


export type StateSummaryViewStatesTestingsByStateFipsCodeArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<StatesTestingCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<StatesTestingsOrderBy>>;
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
  /** Checks for equality with the object’s `stateAbbr` field. */
  stateAbbr?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `stateFipsCode` field. */
  stateFipsCode?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `stateName` field. */
  stateName?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `totalTestResults` field. */
  totalTestResults?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `updated` field. */
  updated?: Maybe<Scalars['String']>;
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
  StateAbbrAsc = 'STATE_ABBR_ASC',
  StateAbbrDesc = 'STATE_ABBR_DESC',
  StateFipsCodeAsc = 'STATE_FIPS_CODE_ASC',
  StateFipsCodeDesc = 'STATE_FIPS_CODE_DESC',
  StateNameAsc = 'STATE_NAME_ASC',
  StateNameDesc = 'STATE_NAME_DESC',
  TotalTestResultsAsc = 'TOTAL_TEST_RESULTS_ASC',
  TotalTestResultsDesc = 'TOTAL_TEST_RESULTS_DESC',
  UpdatedAsc = 'UPDATED_ASC',
  UpdatedDesc = 'UPDATED_DESC'
}

export type StatesHospitalization = {
  __typename?: 'StatesHospitalization';
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
  /** Reads a single `StateSummaryView` that is related to this `StatesHospitalization`. */
  stateSummaryViewByStateFipsCode?: Maybe<StateSummaryView>;
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

export type StatesTesting = {
  __typename?: 'StatesTesting';
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
  /** Reads a single `StateSummaryView` that is related to this `StatesTesting`. */
  stateSummaryViewByStateFipsCode?: Maybe<StateSummaryView>;
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

export type UsSummaryView = {
  __typename?: 'UsSummaryView';
  confirmedCases?: Maybe<Scalars['Int']>;
  confirmedIncrease?: Maybe<Scalars['Int']>;
  confirmedIncrease14Days?: Maybe<Scalars['Int']>;
  population?: Maybe<Scalars['BigInt']>;
  updated?: Maybe<Scalars['String']>;
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
  /** Checks for equality with the object’s `population` field. */
  population?: Maybe<Scalars['BigInt']>;
  /** Checks for equality with the object’s `updated` field. */
  updated?: Maybe<Scalars['String']>;
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
  Natural = 'NATURAL',
  PopulationAsc = 'POPULATION_ASC',
  PopulationDesc = 'POPULATION_DESC',
  UpdatedAsc = 'UPDATED_ASC',
  UpdatedDesc = 'UPDATED_DESC'
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
  totalTestResults?: Maybe<Scalars['Int']>;
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
  /** Checks for equality with the object’s `totalTestResults` field. */
  totalTestResults?: Maybe<Scalars['Int']>;
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
  totalTestResults?: Maybe<Scalars['Int']>;
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
  TotalTestResultsAsc = 'TOTAL_TEST_RESULTS_ASC',
  TotalTestResultsDesc = 'TOTAL_TEST_RESULTS_DESC'
}

export type SearchBarDataQueryVariables = Exact<{ [key: string]: never; }>;


export type SearchBarDataQuery = { __typename?: 'Query', counties?: Maybe<{ __typename?: 'CountySummaryViewsConnection', nodes: Array<Maybe<{ __typename?: 'CountySummaryView', countyName?: Maybe<string>, stateName?: Maybe<string>, countyFipsCode?: Maybe<string>, confirmedCases?: Maybe<number>, state?: Maybe<{ __typename?: 'StateSummaryView', stateAbbr?: Maybe<string> }> }>> }>, states?: Maybe<{ __typename?: 'StateSummaryViewsConnection', nodes: Array<Maybe<{ __typename?: 'StateSummaryView', stateName?: Maybe<string>, stateFipsCode?: Maybe<string>, confirmedCases?: Maybe<number> }>> }> };

export type UsCasesQueryVariables = Exact<{ [key: string]: never; }>;


export type UsCasesQuery = { __typename?: 'Query', allUsCasesAlls?: Maybe<{ __typename?: 'UsCasesAllsConnection', nodes: Array<Maybe<{ __typename?: 'UsCasesAll', date?: Maybe<string>, confirmedCases?: Maybe<number>, deaths?: Maybe<number> }>> }> };

export type UsStatesCasesTableQueryVariables = Exact<{ [key: string]: never; }>;


export type UsStatesCasesTableQuery = { __typename?: 'Query', allStateSummaryViews?: Maybe<{ __typename?: 'StateSummaryViewsConnection', nodes: Array<Maybe<{ __typename?: 'StateSummaryView', stateName?: Maybe<string>, stateFipsCode?: Maybe<string>, confirmedCases?: Maybe<number>, confirmedIncrease?: Maybe<number>, deaths?: Maybe<number>, deathIncrease?: Maybe<number>, population?: Maybe<number> }>> }> };

export type UsHopitalizationQueryVariables = Exact<{ [key: string]: never; }>;


export type UsHopitalizationQuery = { __typename?: 'Query', allUsHospitalizations?: Maybe<{ __typename?: 'UsHospitalizationsConnection', nodes: Array<Maybe<{ __typename?: 'UsHospitalization', date?: Maybe<string>, adultIcuBedUsed?: Maybe<number>, inIcuCurrently?: Maybe<number>, hospitalizedCurrently?: Maybe<number>, adultIcuBedsCapacity?: Maybe<number>, inpatientBedsUsed?: Maybe<number>, inpatientBedsCapacity?: Maybe<number> }>> }> };

export type UsSubRegionsQueryVariables = Exact<{ [key: string]: never; }>;


export type UsSubRegionsQuery = { __typename?: 'Query', allStateSummaryViews?: Maybe<{ __typename?: 'StateSummaryViewsConnection', nodes: Array<Maybe<{ __typename?: 'StateSummaryView', stateName?: Maybe<string>, stateAbbr?: Maybe<string>, stateCasesAllsByStateFipsCode: { __typename?: 'StateCasesAllsConnection', nodes: Array<Maybe<{ __typename?: 'StateCasesAll', date?: Maybe<string>, stateName?: Maybe<string>, stateFipsCode?: Maybe<string>, confirmedCases?: Maybe<number>, deaths?: Maybe<number> }>> } }>> }> };

export type UsTestingQueryVariables = Exact<{ [key: string]: never; }>;


export type UsTestingQuery = { __typename?: 'Query', allUsTestings?: Maybe<{ __typename?: 'UsTestingsConnection', nodes: Array<Maybe<{ __typename?: 'UsTesting', date?: Maybe<string>, totalTestResults?: Maybe<number>, negativeIncrease?: Maybe<number>, positiveIncrease?: Maybe<number>, negative?: Maybe<number>, positive?: Maybe<number>, inconclusive?: Maybe<number>, inconclusiveIncrease?: Maybe<number> }>> }> };

export type CountyCompareToParentsQueryVariables = Exact<{
  county_fips_code?: Maybe<Scalars['String']>;
}>;


export type CountyCompareToParentsQuery = { __typename?: 'Query', us: { __typename?: 'Query', cases?: Maybe<{ __typename?: 'UsCasesAllsConnection', nodes: Array<Maybe<{ __typename?: 'UsCasesAll', date?: Maybe<string>, confirmedCases?: Maybe<number>, deaths?: Maybe<number> }>> }>, allUsSummaryViews?: Maybe<{ __typename?: 'UsSummaryViewsConnection', nodes: Array<Maybe<{ __typename?: 'UsSummaryView', population?: Maybe<any> }>> }> }, county: { __typename?: 'Query', summary?: Maybe<{ __typename?: 'CountySummaryViewsConnection', nodes: Array<Maybe<{ __typename?: 'CountySummaryView', confirmedCases?: Maybe<number>, deaths?: Maybe<number>, population?: Maybe<number> }>> }>, cases?: Maybe<{ __typename?: 'CountyCasesAllsConnection', nodes: Array<Maybe<{ __typename?: 'CountyCasesAll', date?: Maybe<string>, countyFipsCode?: Maybe<string>, confirmedCases?: Maybe<number>, deaths?: Maybe<number> }>> }> }, state: { __typename?: 'Query', allCountyMetas?: Maybe<{ __typename?: 'CountyMetasConnection', nodes: Array<Maybe<{ __typename?: 'CountyMeta', stateSummaryViewByStateFipsCode?: Maybe<{ __typename?: 'StateSummaryView', stateName?: Maybe<string>, stateAbbr?: Maybe<string>, stateFipsCode?: Maybe<string>, population?: Maybe<number>, stateCasesAllsByStateFipsCode: { __typename?: 'StateCasesAllsConnection', nodes: Array<Maybe<{ __typename?: 'StateCasesAll', date?: Maybe<string>, confirmedCases?: Maybe<number>, deaths?: Maybe<number> }>> } }> }>> }> } };

export type CountyDetailsByCountyFipsQueryVariables = Exact<{
  county_fips_code?: Maybe<Scalars['String']>;
}>;


export type CountyDetailsByCountyFipsQuery = { __typename?: 'Query', summary?: Maybe<{ __typename?: 'CountySummaryViewsConnection', nodes: Array<Maybe<{ __typename?: 'CountySummaryView', stateName?: Maybe<string>, countyName?: Maybe<string>, countyFipsCode?: Maybe<string>, stateFipsCode?: Maybe<string>, confirmedCases?: Maybe<number>, confirmedIncrease?: Maybe<number>, deaths?: Maybe<number>, deathIncrease?: Maybe<number>, population?: Maybe<number> }>> }>, cases?: Maybe<{ __typename?: 'CountyCasesAllsConnection', nodes: Array<Maybe<{ __typename?: 'CountyCasesAll', date?: Maybe<string>, county?: Maybe<string>, stateName?: Maybe<string>, stateFipsCode?: Maybe<string>, countyFipsCode?: Maybe<string>, confirmedCases?: Maybe<number>, deaths?: Maybe<number> }>> }> };

export type InfoSummaryByStateFipsQueryVariables = Exact<{
  state_fips_code?: Maybe<Scalars['String']>;
}>;


export type InfoSummaryByStateFipsQuery = { __typename?: 'Query', allCountySummaryViews?: Maybe<{ __typename?: 'CountySummaryViewsConnection', nodes: Array<Maybe<{ __typename?: 'CountySummaryView', countyName?: Maybe<string>, countyFipsCode?: Maybe<string>, confirmedCases?: Maybe<number>, confirmedIncrease?: Maybe<number> }>> }> };

export type InfoSummaryByCountyFipsQueryVariables = Exact<{
  county_fips_code?: Maybe<Scalars['String']>;
}>;


export type InfoSummaryByCountyFipsQuery = { __typename?: 'Query', allCountySummaryViews?: Maybe<{ __typename?: 'CountySummaryViewsConnection', nodes: Array<Maybe<{ __typename?: 'CountySummaryView', countyName?: Maybe<string>, confirmedCases?: Maybe<number>, confirmedIncrease?: Maybe<number>, stateSummaryViewByStateFipsCode?: Maybe<{ __typename?: 'StateSummaryView', stateName?: Maybe<string>, stateAbbr?: Maybe<string>, stateFipsCode?: Maybe<string>, confirmedCases?: Maybe<number>, confirmedIncrease?: Maybe<number> }> }>> }>, allUsSummaryViews?: Maybe<{ __typename?: 'UsSummaryViewsConnection', nodes: Array<Maybe<{ __typename?: 'UsSummaryView', confirmedCases?: Maybe<number>, confirmedIncrease?: Maybe<number> }>> }> };

export type StateByFipsQueryVariables = Exact<{
  fips?: Maybe<Scalars['String']>;
}>;


export type StateByFipsQuery = { __typename?: 'Query', allStateSummaryViews?: Maybe<{ __typename?: 'StateSummaryViewsConnection', nodes: Array<Maybe<{ __typename?: 'StateSummaryView', stateAbbr?: Maybe<string>, stateName?: Maybe<string>, stateFipsCode?: Maybe<string> }>> }> };

export type StateByFipsDetailsQueryVariables = Exact<{
  state_fips_code?: Maybe<Scalars['String']>;
}>;


export type StateByFipsDetailsQuery = { __typename?: 'Query', allStateSummaryViews?: Maybe<{ __typename?: 'StateSummaryViewsConnection', nodes: Array<Maybe<{ __typename?: 'StateSummaryView', stateAbbr?: Maybe<string>, stateName?: Maybe<string>, stateFipsCode?: Maybe<string>, countiesTable: { __typename?: 'CountySummaryViewsConnection', nodes: Array<Maybe<{ __typename?: 'CountySummaryView', stateName?: Maybe<string>, countyName?: Maybe<string>, countyFipsCode?: Maybe<string>, stateFipsCode?: Maybe<string>, confirmedCases?: Maybe<number>, confirmedIncrease?: Maybe<number>, deaths?: Maybe<number>, deathIncrease?: Maybe<number>, population?: Maybe<number> }>> }, cases: { __typename?: 'StateCasesAllsConnection', nodes: Array<Maybe<{ __typename?: 'StateCasesAll', date?: Maybe<string>, confirmedCases?: Maybe<number>, deaths?: Maybe<number> }>> }, hospitalization: { __typename?: 'StatesHospitalizationsConnection', nodes: Array<Maybe<{ __typename?: 'StatesHospitalization', date?: Maybe<string>, inIcuCurrently?: Maybe<number>, hospitalizedCurrently?: Maybe<number> }>> }, testing: { __typename?: 'StatesTestingsConnection', nodes: Array<Maybe<{ __typename?: 'StatesTesting', date?: Maybe<string>, totalTestResults?: Maybe<number>, negative?: Maybe<number>, positive?: Maybe<number>, inconclusive?: Maybe<number> }>> } }>> }> };

export type StateSubRegionQueryVariables = Exact<{
  state_fips_code?: Maybe<Scalars['String']>;
}>;


export type StateSubRegionQuery = { __typename?: 'Query', allStateSummaryViews?: Maybe<{ __typename?: 'StateSummaryViewsConnection', nodes: Array<Maybe<{ __typename?: 'StateSummaryView', stateName?: Maybe<string>, stateAbbr?: Maybe<string>, stateFipsCode?: Maybe<string>, population?: Maybe<number>, countySummaryViewsByStateFipsCode: { __typename?: 'CountySummaryViewsConnection', nodes: Array<Maybe<{ __typename?: 'CountySummaryView', countyName?: Maybe<string>, countyFipsCode?: Maybe<string>, countyCasesAllsByCountyFipsCode: { __typename?: 'CountyCasesAllsConnection', nodes: Array<Maybe<{ __typename?: 'CountyCasesAll', date?: Maybe<string>, confirmedCases?: Maybe<number> }>> } }>> } }>> }> };

export type StatesQueryVariables = Exact<{ [key: string]: never; }>;


export type StatesQuery = { __typename?: 'Query', allStateSummaryViews?: Maybe<{ __typename?: 'StateSummaryViewsConnection', nodes: Array<Maybe<{ __typename?: 'StateSummaryView', stateAbbr?: Maybe<string>, stateName?: Maybe<string>, countySummaryViewsByStateFipsCode: { __typename?: 'CountySummaryViewsConnection', nodes: Array<Maybe<{ __typename?: 'CountySummaryView', countyName?: Maybe<string> }>> } }>> }> };

export type UsStatesTestingTableQueryVariables = Exact<{ [key: string]: never; }>;


export type UsStatesTestingTableQuery = { __typename?: 'Query', allStateSummaryViews?: Maybe<{ __typename?: 'StateSummaryViewsConnection', nodes: Array<Maybe<{ __typename?: 'StateSummaryView', stateName?: Maybe<string>, stateFipsCode?: Maybe<string>, population?: Maybe<number>, negative?: Maybe<number>, positive?: Maybe<number>, positiveIncrease?: Maybe<number>, negativeIncrease?: Maybe<number>, totalTestResults?: Maybe<number> }>> }> };


export const SearchBarDataDocument = gql`
    query SearchBarData {
  counties: allCountySummaryViews(condition: {}) {
    nodes {
      countyName
      stateName
      countyFipsCode
      confirmedCases
      state: stateSummaryViewByStateFipsCode {
        stateAbbr
      }
    }
  }
  states: allStateSummaryViews {
    nodes {
      stateName
      stateFipsCode
      confirmedCases
    }
  }
}
    `;

/**
 * __useSearchBarDataQuery__
 *
 * To run a query within a React component, call `useSearchBarDataQuery` and pass it any options that fit your needs.
 * When your component renders, `useSearchBarDataQuery` returns an object from Apollo Client that contains loading, error, and data properties
 * you can use to render your UI.
 *
 * @param baseOptions options that will be passed into the query, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options;
 *
 * @example
 * const { data, loading, error } = useSearchBarDataQuery({
 *   variables: {
 *   },
 * });
 */
export function useSearchBarDataQuery(baseOptions?: Apollo.QueryHookOptions<SearchBarDataQuery, SearchBarDataQueryVariables>) {
        const options = {...defaultOptions, ...baseOptions}
        return Apollo.useQuery<SearchBarDataQuery, SearchBarDataQueryVariables>(SearchBarDataDocument, options);
      }
export function useSearchBarDataLazyQuery(baseOptions?: Apollo.LazyQueryHookOptions<SearchBarDataQuery, SearchBarDataQueryVariables>) {
          const options = {...defaultOptions, ...baseOptions}
          return Apollo.useLazyQuery<SearchBarDataQuery, SearchBarDataQueryVariables>(SearchBarDataDocument, options);
        }
export type SearchBarDataQueryHookResult = ReturnType<typeof useSearchBarDataQuery>;
export type SearchBarDataLazyQueryHookResult = ReturnType<typeof useSearchBarDataLazyQuery>;
export type SearchBarDataQueryResult = Apollo.QueryResult<SearchBarDataQuery, SearchBarDataQueryVariables>;
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
export const UsHopitalizationDocument = gql`
    query USHopitalization {
  allUsHospitalizations {
    nodes {
      date
      adultIcuBedUsed
      inIcuCurrently
      hospitalizedCurrently
      adultIcuBedsCapacity
      inpatientBedsUsed
      inpatientBedsCapacity
    }
  }
}
    `;

/**
 * __useUsHopitalizationQuery__
 *
 * To run a query within a React component, call `useUsHopitalizationQuery` and pass it any options that fit your needs.
 * When your component renders, `useUsHopitalizationQuery` returns an object from Apollo Client that contains loading, error, and data properties
 * you can use to render your UI.
 *
 * @param baseOptions options that will be passed into the query, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options;
 *
 * @example
 * const { data, loading, error } = useUsHopitalizationQuery({
 *   variables: {
 *   },
 * });
 */
export function useUsHopitalizationQuery(baseOptions?: Apollo.QueryHookOptions<UsHopitalizationQuery, UsHopitalizationQueryVariables>) {
        const options = {...defaultOptions, ...baseOptions}
        return Apollo.useQuery<UsHopitalizationQuery, UsHopitalizationQueryVariables>(UsHopitalizationDocument, options);
      }
export function useUsHopitalizationLazyQuery(baseOptions?: Apollo.LazyQueryHookOptions<UsHopitalizationQuery, UsHopitalizationQueryVariables>) {
          const options = {...defaultOptions, ...baseOptions}
          return Apollo.useLazyQuery<UsHopitalizationQuery, UsHopitalizationQueryVariables>(UsHopitalizationDocument, options);
        }
export type UsHopitalizationQueryHookResult = ReturnType<typeof useUsHopitalizationQuery>;
export type UsHopitalizationLazyQueryHookResult = ReturnType<typeof useUsHopitalizationLazyQuery>;
export type UsHopitalizationQueryResult = Apollo.QueryResult<UsHopitalizationQuery, UsHopitalizationQueryVariables>;
export const UsSubRegionsDocument = gql`
    query USSubRegions {
  allStateSummaryViews {
    nodes {
      stateName
      stateAbbr
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
export const UsTestingDocument = gql`
    query USTesting {
  allUsTestings {
    nodes {
      date
      totalTestResults
      negativeIncrease
      positiveIncrease
      negative
      positive
      inconclusive
      inconclusiveIncrease
    }
  }
}
    `;

/**
 * __useUsTestingQuery__
 *
 * To run a query within a React component, call `useUsTestingQuery` and pass it any options that fit your needs.
 * When your component renders, `useUsTestingQuery` returns an object from Apollo Client that contains loading, error, and data properties
 * you can use to render your UI.
 *
 * @param baseOptions options that will be passed into the query, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options;
 *
 * @example
 * const { data, loading, error } = useUsTestingQuery({
 *   variables: {
 *   },
 * });
 */
export function useUsTestingQuery(baseOptions?: Apollo.QueryHookOptions<UsTestingQuery, UsTestingQueryVariables>) {
        const options = {...defaultOptions, ...baseOptions}
        return Apollo.useQuery<UsTestingQuery, UsTestingQueryVariables>(UsTestingDocument, options);
      }
export function useUsTestingLazyQuery(baseOptions?: Apollo.LazyQueryHookOptions<UsTestingQuery, UsTestingQueryVariables>) {
          const options = {...defaultOptions, ...baseOptions}
          return Apollo.useLazyQuery<UsTestingQuery, UsTestingQueryVariables>(UsTestingDocument, options);
        }
export type UsTestingQueryHookResult = ReturnType<typeof useUsTestingQuery>;
export type UsTestingLazyQueryHookResult = ReturnType<typeof useUsTestingLazyQuery>;
export type UsTestingQueryResult = Apollo.QueryResult<UsTestingQuery, UsTestingQueryVariables>;
export const CountyCompareToParentsDocument = gql`
    query CountyCompareToParents($county_fips_code: String) {
  us: query {
    cases: allUsCasesAlls {
      nodes {
        date
        confirmedCases
        deaths
      }
    }
    allUsSummaryViews {
      nodes {
        population
      }
    }
  }
  county: query {
    summary: allCountySummaryViews(condition: {countyFipsCode: $county_fips_code}) {
      nodes {
        confirmedCases
        deaths
        population
      }
    }
    cases: allCountyCasesAlls(condition: {countyFipsCode: $county_fips_code}) {
      nodes {
        date
        countyFipsCode
        confirmedCases
        deaths
      }
    }
  }
  state: query {
    allCountyMetas(condition: {countyFipsCode: $county_fips_code}) {
      nodes {
        stateSummaryViewByStateFipsCode {
          stateName
          stateAbbr
          stateFipsCode
          population
          stateCasesAllsByStateFipsCode {
            nodes {
              date
              confirmedCases
              deaths
            }
          }
        }
      }
    }
  }
}
    `;

/**
 * __useCountyCompareToParentsQuery__
 *
 * To run a query within a React component, call `useCountyCompareToParentsQuery` and pass it any options that fit your needs.
 * When your component renders, `useCountyCompareToParentsQuery` returns an object from Apollo Client that contains loading, error, and data properties
 * you can use to render your UI.
 *
 * @param baseOptions options that will be passed into the query, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options;
 *
 * @example
 * const { data, loading, error } = useCountyCompareToParentsQuery({
 *   variables: {
 *      county_fips_code: // value for 'county_fips_code'
 *   },
 * });
 */
export function useCountyCompareToParentsQuery(baseOptions?: Apollo.QueryHookOptions<CountyCompareToParentsQuery, CountyCompareToParentsQueryVariables>) {
        const options = {...defaultOptions, ...baseOptions}
        return Apollo.useQuery<CountyCompareToParentsQuery, CountyCompareToParentsQueryVariables>(CountyCompareToParentsDocument, options);
      }
export function useCountyCompareToParentsLazyQuery(baseOptions?: Apollo.LazyQueryHookOptions<CountyCompareToParentsQuery, CountyCompareToParentsQueryVariables>) {
          const options = {...defaultOptions, ...baseOptions}
          return Apollo.useLazyQuery<CountyCompareToParentsQuery, CountyCompareToParentsQueryVariables>(CountyCompareToParentsDocument, options);
        }
export type CountyCompareToParentsQueryHookResult = ReturnType<typeof useCountyCompareToParentsQuery>;
export type CountyCompareToParentsLazyQueryHookResult = ReturnType<typeof useCountyCompareToParentsLazyQuery>;
export type CountyCompareToParentsQueryResult = Apollo.QueryResult<CountyCompareToParentsQuery, CountyCompareToParentsQueryVariables>;
export const CountyDetailsByCountyFipsDocument = gql`
    query CountyDetailsByCountyFips($county_fips_code: String) {
  summary: allCountySummaryViews(condition: {countyFipsCode: $county_fips_code}) {
    nodes {
      stateName
      countyName
      countyFipsCode
      stateFipsCode
      confirmedCases
      confirmedIncrease
      deaths
      deathIncrease
      population
    }
  }
  cases: allCountyCasesAlls(condition: {countyFipsCode: $county_fips_code}) {
    nodes {
      date
      county
      stateName
      stateFipsCode
      countyFipsCode
      confirmedCases
      deaths
    }
  }
}
    `;

/**
 * __useCountyDetailsByCountyFipsQuery__
 *
 * To run a query within a React component, call `useCountyDetailsByCountyFipsQuery` and pass it any options that fit your needs.
 * When your component renders, `useCountyDetailsByCountyFipsQuery` returns an object from Apollo Client that contains loading, error, and data properties
 * you can use to render your UI.
 *
 * @param baseOptions options that will be passed into the query, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options;
 *
 * @example
 * const { data, loading, error } = useCountyDetailsByCountyFipsQuery({
 *   variables: {
 *      county_fips_code: // value for 'county_fips_code'
 *   },
 * });
 */
export function useCountyDetailsByCountyFipsQuery(baseOptions?: Apollo.QueryHookOptions<CountyDetailsByCountyFipsQuery, CountyDetailsByCountyFipsQueryVariables>) {
        const options = {...defaultOptions, ...baseOptions}
        return Apollo.useQuery<CountyDetailsByCountyFipsQuery, CountyDetailsByCountyFipsQueryVariables>(CountyDetailsByCountyFipsDocument, options);
      }
export function useCountyDetailsByCountyFipsLazyQuery(baseOptions?: Apollo.LazyQueryHookOptions<CountyDetailsByCountyFipsQuery, CountyDetailsByCountyFipsQueryVariables>) {
          const options = {...defaultOptions, ...baseOptions}
          return Apollo.useLazyQuery<CountyDetailsByCountyFipsQuery, CountyDetailsByCountyFipsQueryVariables>(CountyDetailsByCountyFipsDocument, options);
        }
export type CountyDetailsByCountyFipsQueryHookResult = ReturnType<typeof useCountyDetailsByCountyFipsQuery>;
export type CountyDetailsByCountyFipsLazyQueryHookResult = ReturnType<typeof useCountyDetailsByCountyFipsLazyQuery>;
export type CountyDetailsByCountyFipsQueryResult = Apollo.QueryResult<CountyDetailsByCountyFipsQuery, CountyDetailsByCountyFipsQueryVariables>;
export const InfoSummaryByStateFipsDocument = gql`
    query InfoSummaryByStateFips($state_fips_code: String) {
  allCountySummaryViews(
    condition: {stateFipsCode: $state_fips_code}
    orderBy: CONFIRMED_CASES_DESC
    first: 1
  ) {
    nodes {
      countyName
      countyFipsCode
      confirmedCases
      confirmedIncrease
    }
  }
}
    `;

/**
 * __useInfoSummaryByStateFipsQuery__
 *
 * To run a query within a React component, call `useInfoSummaryByStateFipsQuery` and pass it any options that fit your needs.
 * When your component renders, `useInfoSummaryByStateFipsQuery` returns an object from Apollo Client that contains loading, error, and data properties
 * you can use to render your UI.
 *
 * @param baseOptions options that will be passed into the query, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options;
 *
 * @example
 * const { data, loading, error } = useInfoSummaryByStateFipsQuery({
 *   variables: {
 *      state_fips_code: // value for 'state_fips_code'
 *   },
 * });
 */
export function useInfoSummaryByStateFipsQuery(baseOptions?: Apollo.QueryHookOptions<InfoSummaryByStateFipsQuery, InfoSummaryByStateFipsQueryVariables>) {
        const options = {...defaultOptions, ...baseOptions}
        return Apollo.useQuery<InfoSummaryByStateFipsQuery, InfoSummaryByStateFipsQueryVariables>(InfoSummaryByStateFipsDocument, options);
      }
export function useInfoSummaryByStateFipsLazyQuery(baseOptions?: Apollo.LazyQueryHookOptions<InfoSummaryByStateFipsQuery, InfoSummaryByStateFipsQueryVariables>) {
          const options = {...defaultOptions, ...baseOptions}
          return Apollo.useLazyQuery<InfoSummaryByStateFipsQuery, InfoSummaryByStateFipsQueryVariables>(InfoSummaryByStateFipsDocument, options);
        }
export type InfoSummaryByStateFipsQueryHookResult = ReturnType<typeof useInfoSummaryByStateFipsQuery>;
export type InfoSummaryByStateFipsLazyQueryHookResult = ReturnType<typeof useInfoSummaryByStateFipsLazyQuery>;
export type InfoSummaryByStateFipsQueryResult = Apollo.QueryResult<InfoSummaryByStateFipsQuery, InfoSummaryByStateFipsQueryVariables>;
export const InfoSummaryByCountyFipsDocument = gql`
    query InfoSummaryByCountyFips($county_fips_code: String) {
  allCountySummaryViews(condition: {countyFipsCode: $county_fips_code}) {
    nodes {
      countyName
      confirmedCases
      confirmedIncrease
      stateSummaryViewByStateFipsCode {
        stateName
        stateAbbr
        stateFipsCode
        confirmedCases
        confirmedIncrease
      }
    }
  }
  allUsSummaryViews {
    nodes {
      confirmedCases
      confirmedIncrease
    }
  }
}
    `;

/**
 * __useInfoSummaryByCountyFipsQuery__
 *
 * To run a query within a React component, call `useInfoSummaryByCountyFipsQuery` and pass it any options that fit your needs.
 * When your component renders, `useInfoSummaryByCountyFipsQuery` returns an object from Apollo Client that contains loading, error, and data properties
 * you can use to render your UI.
 *
 * @param baseOptions options that will be passed into the query, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options;
 *
 * @example
 * const { data, loading, error } = useInfoSummaryByCountyFipsQuery({
 *   variables: {
 *      county_fips_code: // value for 'county_fips_code'
 *   },
 * });
 */
export function useInfoSummaryByCountyFipsQuery(baseOptions?: Apollo.QueryHookOptions<InfoSummaryByCountyFipsQuery, InfoSummaryByCountyFipsQueryVariables>) {
        const options = {...defaultOptions, ...baseOptions}
        return Apollo.useQuery<InfoSummaryByCountyFipsQuery, InfoSummaryByCountyFipsQueryVariables>(InfoSummaryByCountyFipsDocument, options);
      }
export function useInfoSummaryByCountyFipsLazyQuery(baseOptions?: Apollo.LazyQueryHookOptions<InfoSummaryByCountyFipsQuery, InfoSummaryByCountyFipsQueryVariables>) {
          const options = {...defaultOptions, ...baseOptions}
          return Apollo.useLazyQuery<InfoSummaryByCountyFipsQuery, InfoSummaryByCountyFipsQueryVariables>(InfoSummaryByCountyFipsDocument, options);
        }
export type InfoSummaryByCountyFipsQueryHookResult = ReturnType<typeof useInfoSummaryByCountyFipsQuery>;
export type InfoSummaryByCountyFipsLazyQueryHookResult = ReturnType<typeof useInfoSummaryByCountyFipsLazyQuery>;
export type InfoSummaryByCountyFipsQueryResult = Apollo.QueryResult<InfoSummaryByCountyFipsQuery, InfoSummaryByCountyFipsQueryVariables>;
export const StateByFipsDocument = gql`
    query StateByFips($fips: String) {
  allStateSummaryViews(condition: {stateFipsCode: $fips}) {
    nodes {
      stateAbbr
      stateName
      stateFipsCode
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
export const StateByFipsDetailsDocument = gql`
    query StateByFipsDetails($state_fips_code: String) {
  allStateSummaryViews(condition: {stateFipsCode: $state_fips_code}) {
    nodes {
      stateAbbr
      stateName
      stateFipsCode
      countiesTable: countySummaryViewsByStateFipsCode {
        nodes {
          stateName
          countyName
          countyFipsCode
          stateFipsCode
          confirmedCases
          confirmedIncrease
          deaths
          deathIncrease
          population
        }
      }
      cases: stateCasesAllsByStateFipsCode {
        nodes {
          date
          confirmedCases
          deaths
        }
      }
      hospitalization: statesHospitalizationsByStateFipsCode {
        nodes {
          date
          inIcuCurrently
          hospitalizedCurrently
        }
      }
      testing: statesTestingsByStateFipsCode {
        nodes {
          date
          totalTestResults
          negative
          positive
          inconclusive
        }
      }
    }
  }
}
    `;

/**
 * __useStateByFipsDetailsQuery__
 *
 * To run a query within a React component, call `useStateByFipsDetailsQuery` and pass it any options that fit your needs.
 * When your component renders, `useStateByFipsDetailsQuery` returns an object from Apollo Client that contains loading, error, and data properties
 * you can use to render your UI.
 *
 * @param baseOptions options that will be passed into the query, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options;
 *
 * @example
 * const { data, loading, error } = useStateByFipsDetailsQuery({
 *   variables: {
 *      state_fips_code: // value for 'state_fips_code'
 *   },
 * });
 */
export function useStateByFipsDetailsQuery(baseOptions?: Apollo.QueryHookOptions<StateByFipsDetailsQuery, StateByFipsDetailsQueryVariables>) {
        const options = {...defaultOptions, ...baseOptions}
        return Apollo.useQuery<StateByFipsDetailsQuery, StateByFipsDetailsQueryVariables>(StateByFipsDetailsDocument, options);
      }
export function useStateByFipsDetailsLazyQuery(baseOptions?: Apollo.LazyQueryHookOptions<StateByFipsDetailsQuery, StateByFipsDetailsQueryVariables>) {
          const options = {...defaultOptions, ...baseOptions}
          return Apollo.useLazyQuery<StateByFipsDetailsQuery, StateByFipsDetailsQueryVariables>(StateByFipsDetailsDocument, options);
        }
export type StateByFipsDetailsQueryHookResult = ReturnType<typeof useStateByFipsDetailsQuery>;
export type StateByFipsDetailsLazyQueryHookResult = ReturnType<typeof useStateByFipsDetailsLazyQuery>;
export type StateByFipsDetailsQueryResult = Apollo.QueryResult<StateByFipsDetailsQuery, StateByFipsDetailsQueryVariables>;
export const StateSubRegionDocument = gql`
    query StateSubRegion($state_fips_code: String) {
  allStateSummaryViews(condition: {stateFipsCode: $state_fips_code}) {
    nodes {
      stateName
      stateAbbr
      stateFipsCode
      population
      countySummaryViewsByStateFipsCode {
        nodes {
          countyName
          countyFipsCode
          countyCasesAllsByCountyFipsCode {
            nodes {
              date
              confirmedCases
            }
          }
        }
      }
    }
  }
}
    `;

/**
 * __useStateSubRegionQuery__
 *
 * To run a query within a React component, call `useStateSubRegionQuery` and pass it any options that fit your needs.
 * When your component renders, `useStateSubRegionQuery` returns an object from Apollo Client that contains loading, error, and data properties
 * you can use to render your UI.
 *
 * @param baseOptions options that will be passed into the query, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options;
 *
 * @example
 * const { data, loading, error } = useStateSubRegionQuery({
 *   variables: {
 *      state_fips_code: // value for 'state_fips_code'
 *   },
 * });
 */
export function useStateSubRegionQuery(baseOptions?: Apollo.QueryHookOptions<StateSubRegionQuery, StateSubRegionQueryVariables>) {
        const options = {...defaultOptions, ...baseOptions}
        return Apollo.useQuery<StateSubRegionQuery, StateSubRegionQueryVariables>(StateSubRegionDocument, options);
      }
export function useStateSubRegionLazyQuery(baseOptions?: Apollo.LazyQueryHookOptions<StateSubRegionQuery, StateSubRegionQueryVariables>) {
          const options = {...defaultOptions, ...baseOptions}
          return Apollo.useLazyQuery<StateSubRegionQuery, StateSubRegionQueryVariables>(StateSubRegionDocument, options);
        }
export type StateSubRegionQueryHookResult = ReturnType<typeof useStateSubRegionQuery>;
export type StateSubRegionLazyQueryHookResult = ReturnType<typeof useStateSubRegionLazyQuery>;
export type StateSubRegionQueryResult = Apollo.QueryResult<StateSubRegionQuery, StateSubRegionQueryVariables>;
export const StatesDocument = gql`
    query States {
  allStateSummaryViews {
    nodes {
      stateAbbr
      stateName
      countySummaryViewsByStateFipsCode {
        nodes {
          countyName
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