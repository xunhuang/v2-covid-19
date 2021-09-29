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
  /** A floating point number that requires more precision than IEEE 754 binary 64 */
  BigFloat: any;
  /** A location in a connection that can be used for resuming pagination. */
  Cursor: any;
  /** The `JSON` scalar type represents JSON values as specified by [ECMA-404](http://www.ecma-international.org/publications/files/ECMA-ST/ECMA-404.pdf). */
  JSON: any;
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
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
};


/** The output of our create `CountyCasesAll` mutation. */
export type CreateCountyCasesAllPayloadCountyCasesAllEdgeArgs = {
  orderBy?: Maybe<Array<CountyCasesAllsOrderBy>>;
};

/** All input for the create `Customer` mutation. */
export type CreateCustomerInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `Customer` to be created by this mutation. */
  customer: CustomerInput;
};

/** The output of our create `Customer` mutation. */
export type CreateCustomerPayload = {
  __typename?: 'CreateCustomerPayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `Customer` that was created by this mutation. */
  customer?: Maybe<Customer>;
  /** An edge for our `Customer`. May be used by Relay 1. */
  customerEdge?: Maybe<CustomersEdge>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
};


/** The output of our create `Customer` mutation. */
export type CreateCustomerPayloadCustomerEdgeArgs = {
  orderBy?: Maybe<Array<CustomersOrderBy>>;
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

/** All input for the create `JsonTable` mutation. */
export type CreateJsonTableInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `JsonTable` to be created by this mutation. */
  jsonTable: JsonTableInput;
};

/** The output of our create `JsonTable` mutation. */
export type CreateJsonTablePayload = {
  __typename?: 'CreateJsonTablePayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `JsonTable` that was created by this mutation. */
  jsonTable?: Maybe<JsonTable>;
  /** An edge for our `JsonTable`. May be used by Relay 1. */
  jsonTableEdge?: Maybe<JsonTablesEdge>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
};


/** The output of our create `JsonTable` mutation. */
export type CreateJsonTablePayloadJsonTableEdgeArgs = {
  orderBy?: Maybe<Array<JsonTablesOrderBy>>;
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

/** All input for the create `T` mutation. */
export type CreateTInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `T` to be created by this mutation. */
  t: TInput;
};

/** The output of our create `T` mutation. */
export type CreateTPayload = {
  __typename?: 'CreateTPayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
  /** The `T` that was created by this mutation. */
  t?: Maybe<T>;
  /** An edge for our `T`. May be used by Relay 1. */
  tEdge?: Maybe<TsEdge>;
};


/** The output of our create `T` mutation. */
export type CreateTPayloadTEdgeArgs = {
  orderBy?: Maybe<Array<TsOrderBy>>;
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

/** All input for the create `UsCounty` mutation. */
export type CreateUsCountyInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `UsCounty` to be created by this mutation. */
  usCounty: UsCountyInput;
};

/** The output of our create `UsCounty` mutation. */
export type CreateUsCountyPayload = {
  __typename?: 'CreateUsCountyPayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
  /** The `UsCounty` that was created by this mutation. */
  usCounty?: Maybe<UsCounty>;
  /** An edge for our `UsCounty`. May be used by Relay 1. */
  usCountyEdge?: Maybe<UsCountiesEdge>;
};


/** The output of our create `UsCounty` mutation. */
export type CreateUsCountyPayloadUsCountyEdgeArgs = {
  orderBy?: Maybe<Array<UsCountiesOrderBy>>;
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

/** All input for the create `Yotable2` mutation. */
export type CreateYotable2Input = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `Yotable2` to be created by this mutation. */
  yotable2: Yotable2Input;
};

/** The output of our create `Yotable2` mutation. */
export type CreateYotable2Payload = {
  __typename?: 'CreateYotable2Payload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
  /** The `Yotable2` that was created by this mutation. */
  yotable2?: Maybe<Yotable2>;
  /** An edge for our `Yotable2`. May be used by Relay 1. */
  yotable2Edge?: Maybe<Yotable2SEdge>;
};


/** The output of our create `Yotable2` mutation. */
export type CreateYotable2PayloadYotable2EdgeArgs = {
  orderBy?: Maybe<Array<Yotable2SOrderBy>>;
};

/** All input for the create `Yotable` mutation. */
export type CreateYotableInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `Yotable` to be created by this mutation. */
  yotable: YotableInput;
};

/** The output of our create `Yotable` mutation. */
export type CreateYotablePayload = {
  __typename?: 'CreateYotablePayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
  /** The `Yotable` that was created by this mutation. */
  yotable?: Maybe<Yotable>;
  /** An edge for our `Yotable`. May be used by Relay 1. */
  yotableEdge?: Maybe<YotablesEdge>;
};


/** The output of our create `Yotable` mutation. */
export type CreateYotablePayloadYotableEdgeArgs = {
  orderBy?: Maybe<Array<YotablesOrderBy>>;
};

export type Customer = Node & {
  __typename?: 'Customer';
  comment?: Maybe<Scalars['String']>;
  id: Scalars['Int'];
  name: Scalars['String'];
  /** A globally unique identifier. Can be used in various places throughout the system to identify this single value. */
  nodeId: Scalars['ID'];
};

/**
 * A condition to be used against `Customer` object types. All fields are tested
 * for equality and combined with a logical ‘and.’
 */
export type CustomerCondition = {
  /** Checks for equality with the object’s `comment` field. */
  comment?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `id` field. */
  id?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `name` field. */
  name?: Maybe<Scalars['String']>;
};

/** An input for mutations affecting `Customer` */
export type CustomerInput = {
  comment?: Maybe<Scalars['String']>;
  id: Scalars['Int'];
  name: Scalars['String'];
};

/** Represents an update to a `Customer`. Fields that are set will be updated. */
export type CustomerPatch = {
  comment?: Maybe<Scalars['String']>;
  id?: Maybe<Scalars['Int']>;
  name?: Maybe<Scalars['String']>;
};

/** A connection to a list of `Customer` values. */
export type CustomersConnection = {
  __typename?: 'CustomersConnection';
  /** A list of edges which contains the `Customer` and cursor to aid in pagination. */
  edges: Array<CustomersEdge>;
  /** A list of `Customer` objects. */
  nodes: Array<Maybe<Customer>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  /** The count of *all* `Customer` you could get from the connection. */
  totalCount: Scalars['Int'];
};

/** A `Customer` edge in the connection. */
export type CustomersEdge = {
  __typename?: 'CustomersEdge';
  /** A cursor for use in pagination. */
  cursor?: Maybe<Scalars['Cursor']>;
  /** The `Customer` at the end of the edge. */
  node?: Maybe<Customer>;
};

/** Methods to use when ordering `Customer`. */
export enum CustomersOrderBy {
  CommentAsc = 'COMMENT_ASC',
  CommentDesc = 'COMMENT_DESC',
  IdAsc = 'ID_ASC',
  IdDesc = 'ID_DESC',
  NameAsc = 'NAME_ASC',
  NameDesc = 'NAME_DESC',
  Natural = 'NATURAL',
  PrimaryKeyAsc = 'PRIMARY_KEY_ASC',
  PrimaryKeyDesc = 'PRIMARY_KEY_DESC'
}

/** All input for the `deleteCustomerById` mutation. */
export type DeleteCustomerByIdInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  id: Scalars['Int'];
};

/** All input for the `deleteCustomer` mutation. */
export type DeleteCustomerInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The globally unique `ID` which will identify a single `Customer` to be deleted. */
  nodeId: Scalars['ID'];
};

/** The output of our delete `Customer` mutation. */
export type DeleteCustomerPayload = {
  __typename?: 'DeleteCustomerPayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `Customer` that was deleted by this mutation. */
  customer?: Maybe<Customer>;
  /** An edge for our `Customer`. May be used by Relay 1. */
  customerEdge?: Maybe<CustomersEdge>;
  deletedCustomerId?: Maybe<Scalars['ID']>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
};


/** The output of our delete `Customer` mutation. */
export type DeleteCustomerPayloadCustomerEdgeArgs = {
  orderBy?: Maybe<Array<CustomersOrderBy>>;
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

/** All input for the `deleteJsonTableById` mutation. */
export type DeleteJsonTableByIdInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  id: Scalars['String'];
};

/** All input for the `deleteJsonTable` mutation. */
export type DeleteJsonTableInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The globally unique `ID` which will identify a single `JsonTable` to be deleted. */
  nodeId: Scalars['ID'];
};

/** The output of our delete `JsonTable` mutation. */
export type DeleteJsonTablePayload = {
  __typename?: 'DeleteJsonTablePayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  deletedJsonTableId?: Maybe<Scalars['ID']>;
  /** The `JsonTable` that was deleted by this mutation. */
  jsonTable?: Maybe<JsonTable>;
  /** An edge for our `JsonTable`. May be used by Relay 1. */
  jsonTableEdge?: Maybe<JsonTablesEdge>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
};


/** The output of our delete `JsonTable` mutation. */
export type DeleteJsonTablePayloadJsonTableEdgeArgs = {
  orderBy?: Maybe<Array<JsonTablesOrderBy>>;
};

/** All input for the `deleteYotableById` mutation. */
export type DeleteYotableByIdInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  id: Scalars['Int'];
};

/** All input for the `deleteYotable` mutation. */
export type DeleteYotableInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The globally unique `ID` which will identify a single `Yotable` to be deleted. */
  nodeId: Scalars['ID'];
};

/** The output of our delete `Yotable` mutation. */
export type DeleteYotablePayload = {
  __typename?: 'DeleteYotablePayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  deletedYotableId?: Maybe<Scalars['ID']>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
  /** The `Yotable` that was deleted by this mutation. */
  yotable?: Maybe<Yotable>;
  /** An edge for our `Yotable`. May be used by Relay 1. */
  yotableEdge?: Maybe<YotablesEdge>;
};


/** The output of our delete `Yotable` mutation. */
export type DeleteYotablePayloadYotableEdgeArgs = {
  orderBy?: Maybe<Array<YotablesOrderBy>>;
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
  StateFipsCodeAsc = 'STATE_FIPS_CODE_ASC',
  StateFipsCodeDesc = 'STATE_FIPS_CODE_DESC',
  SummaryLevelAsc = 'SUMMARY_LEVEL_ASC',
  SummaryLevelDesc = 'SUMMARY_LEVEL_DESC',
  SummaryLevelNameAsc = 'SUMMARY_LEVEL_NAME_ASC',
  SummaryLevelNameDesc = 'SUMMARY_LEVEL_NAME_DESC'
}

export type FipsCodeCounty = {
  __typename?: 'FipsCodeCounty';
  areaName?: Maybe<Scalars['String']>;
  consolidatedCityFipsCode?: Maybe<Scalars['String']>;
  countyFipsCode?: Maybe<Scalars['String']>;
  countySubdivisionFipsCode?: Maybe<Scalars['String']>;
  /** Reads a single `FipsCodeState` that is related to this `FipsCodeCounty`. */
  fipsCodeStateByStateFipsCode?: Maybe<FipsCodeState>;
  placeFipsCode?: Maybe<Scalars['String']>;
  stateFipsCode?: Maybe<Scalars['String']>;
  summaryLevel?: Maybe<Scalars['String']>;
  summaryLevelName?: Maybe<Scalars['String']>;
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
  countyFipsCode?: Maybe<Scalars['String']>;
  countySubdivisionFipsCode?: Maybe<Scalars['String']>;
  placeFipsCode?: Maybe<Scalars['String']>;
  stateFipsCode?: Maybe<Scalars['String']>;
  summaryLevel?: Maybe<Scalars['String']>;
  summaryLevelName?: Maybe<Scalars['String']>;
};

export type FipsCodeState = Node & {
  __typename?: 'FipsCodeState';
  /** Reads and enables pagination through a set of `FipsCodeCounty`. */
  fipsCodeCountiesByStateFipsCode: FipsCodeCountiesConnection;
  /** A globally unique identifier. Can be used in various places throughout the system to identify this single value. */
  nodeId: Scalars['ID'];
  stateFipsCode: Scalars['String'];
  stateGnisid?: Maybe<Scalars['String']>;
  stateName?: Maybe<Scalars['String']>;
  statePostalAbbreviation?: Maybe<Scalars['String']>;
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

export type JsonTable = Node & {
  __typename?: 'JsonTable';
  boolCol?: Maybe<Scalars['Boolean']>;
  floatCol?: Maybe<Scalars['BigFloat']>;
  id: Scalars['String'];
  intCol?: Maybe<Scalars['Int']>;
  jsonCol?: Maybe<Scalars['JSON']>;
  /** A globally unique identifier. Can be used in various places throughout the system to identify this single value. */
  nodeId: Scalars['ID'];
  strCol?: Maybe<Scalars['String']>;
};

/**
 * A condition to be used against `JsonTable` object types. All fields are tested
 * for equality and combined with a logical ‘and.’
 */
export type JsonTableCondition = {
  /** Checks for equality with the object’s `boolCol` field. */
  boolCol?: Maybe<Scalars['Boolean']>;
  /** Checks for equality with the object’s `floatCol` field. */
  floatCol?: Maybe<Scalars['BigFloat']>;
  /** Checks for equality with the object’s `id` field. */
  id?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `intCol` field. */
  intCol?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `jsonCol` field. */
  jsonCol?: Maybe<Scalars['JSON']>;
  /** Checks for equality with the object’s `strCol` field. */
  strCol?: Maybe<Scalars['String']>;
};

/** An input for mutations affecting `JsonTable` */
export type JsonTableInput = {
  boolCol?: Maybe<Scalars['Boolean']>;
  floatCol?: Maybe<Scalars['BigFloat']>;
  id: Scalars['String'];
  intCol?: Maybe<Scalars['Int']>;
  jsonCol?: Maybe<Scalars['JSON']>;
  strCol?: Maybe<Scalars['String']>;
};

/** Represents an update to a `JsonTable`. Fields that are set will be updated. */
export type JsonTablePatch = {
  boolCol?: Maybe<Scalars['Boolean']>;
  floatCol?: Maybe<Scalars['BigFloat']>;
  id?: Maybe<Scalars['String']>;
  intCol?: Maybe<Scalars['Int']>;
  jsonCol?: Maybe<Scalars['JSON']>;
  strCol?: Maybe<Scalars['String']>;
};

/** A connection to a list of `JsonTable` values. */
export type JsonTablesConnection = {
  __typename?: 'JsonTablesConnection';
  /** A list of edges which contains the `JsonTable` and cursor to aid in pagination. */
  edges: Array<JsonTablesEdge>;
  /** A list of `JsonTable` objects. */
  nodes: Array<Maybe<JsonTable>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  /** The count of *all* `JsonTable` you could get from the connection. */
  totalCount: Scalars['Int'];
};

/** A `JsonTable` edge in the connection. */
export type JsonTablesEdge = {
  __typename?: 'JsonTablesEdge';
  /** A cursor for use in pagination. */
  cursor?: Maybe<Scalars['Cursor']>;
  /** The `JsonTable` at the end of the edge. */
  node?: Maybe<JsonTable>;
};

/** Methods to use when ordering `JsonTable`. */
export enum JsonTablesOrderBy {
  BoolColAsc = 'BOOL_COL_ASC',
  BoolColDesc = 'BOOL_COL_DESC',
  FloatColAsc = 'FLOAT_COL_ASC',
  FloatColDesc = 'FLOAT_COL_DESC',
  IdAsc = 'ID_ASC',
  IdDesc = 'ID_DESC',
  IntColAsc = 'INT_COL_ASC',
  IntColDesc = 'INT_COL_DESC',
  JsonColAsc = 'JSON_COL_ASC',
  JsonColDesc = 'JSON_COL_DESC',
  Natural = 'NATURAL',
  PrimaryKeyAsc = 'PRIMARY_KEY_ASC',
  PrimaryKeyDesc = 'PRIMARY_KEY_DESC',
  StrColAsc = 'STR_COL_ASC',
  StrColDesc = 'STR_COL_DESC'
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
  /** Creates a single `Customer`. */
  createCustomer?: Maybe<CreateCustomerPayload>;
  /** Creates a single `FipsCodeCounty`. */
  createFipsCodeCounty?: Maybe<CreateFipsCodeCountyPayload>;
  /** Creates a single `FipsCodeState`. */
  createFipsCodeState?: Maybe<CreateFipsCodeStatePayload>;
  /** Creates a single `JsonTable`. */
  createJsonTable?: Maybe<CreateJsonTablePayload>;
  /** Creates a single `MsaCasesAll`. */
  createMsaCasesAll?: Maybe<CreateMsaCasesAllPayload>;
  /** Creates a single `MsaDefinition`. */
  createMsaDefinition?: Maybe<CreateMsaDefinitionPayload>;
  /** Creates a single `StateCasesAll`. */
  createStateCasesAll?: Maybe<CreateStateCasesAllPayload>;
  /** Creates a single `StatesHospitalization`. */
  createStatesHospitalization?: Maybe<CreateStatesHospitalizationPayload>;
  /** Creates a single `StatesSummary`. */
  createStatesSummary?: Maybe<CreateStatesSummaryPayload>;
  /** Creates a single `StatesTesting`. */
  createStatesTesting?: Maybe<CreateStatesTestingPayload>;
  /** Creates a single `T`. */
  createT?: Maybe<CreateTPayload>;
  /** Creates a single `UsCasesAll`. */
  createUsCasesAll?: Maybe<CreateUsCasesAllPayload>;
  /** Creates a single `UsCounty`. */
  createUsCounty?: Maybe<CreateUsCountyPayload>;
  /** Creates a single `UsHospitalization`. */
  createUsHospitalization?: Maybe<CreateUsHospitalizationPayload>;
  /** Creates a single `UsSummary`. */
  createUsSummary?: Maybe<CreateUsSummaryPayload>;
  /** Creates a single `UsTesting`. */
  createUsTesting?: Maybe<CreateUsTestingPayload>;
  /** Creates a single `Yotable`. */
  createYotable?: Maybe<CreateYotablePayload>;
  /** Creates a single `Yotable2`. */
  createYotable2?: Maybe<CreateYotable2Payload>;
  /** Deletes a single `Customer` using its globally unique id. */
  deleteCustomer?: Maybe<DeleteCustomerPayload>;
  /** Deletes a single `Customer` using a unique key. */
  deleteCustomerById?: Maybe<DeleteCustomerPayload>;
  /** Deletes a single `FipsCodeState` using its globally unique id. */
  deleteFipsCodeState?: Maybe<DeleteFipsCodeStatePayload>;
  /** Deletes a single `FipsCodeState` using a unique key. */
  deleteFipsCodeStateByStateFipsCode?: Maybe<DeleteFipsCodeStatePayload>;
  /** Deletes a single `JsonTable` using its globally unique id. */
  deleteJsonTable?: Maybe<DeleteJsonTablePayload>;
  /** Deletes a single `JsonTable` using a unique key. */
  deleteJsonTableById?: Maybe<DeleteJsonTablePayload>;
  /** Deletes a single `Yotable` using its globally unique id. */
  deleteYotable?: Maybe<DeleteYotablePayload>;
  /** Deletes a single `Yotable` using a unique key. */
  deleteYotableById?: Maybe<DeleteYotablePayload>;
  /** Updates a single `Customer` using its globally unique id and a patch. */
  updateCustomer?: Maybe<UpdateCustomerPayload>;
  /** Updates a single `Customer` using a unique key and a patch. */
  updateCustomerById?: Maybe<UpdateCustomerPayload>;
  /** Updates a single `FipsCodeState` using its globally unique id and a patch. */
  updateFipsCodeState?: Maybe<UpdateFipsCodeStatePayload>;
  /** Updates a single `FipsCodeState` using a unique key and a patch. */
  updateFipsCodeStateByStateFipsCode?: Maybe<UpdateFipsCodeStatePayload>;
  /** Updates a single `JsonTable` using its globally unique id and a patch. */
  updateJsonTable?: Maybe<UpdateJsonTablePayload>;
  /** Updates a single `JsonTable` using a unique key and a patch. */
  updateJsonTableById?: Maybe<UpdateJsonTablePayload>;
  /** Updates a single `Yotable` using its globally unique id and a patch. */
  updateYotable?: Maybe<UpdateYotablePayload>;
  /** Updates a single `Yotable` using a unique key and a patch. */
  updateYotableById?: Maybe<UpdateYotablePayload>;
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
export type MutationCreateCustomerArgs = {
  input: CreateCustomerInput;
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
export type MutationCreateJsonTableArgs = {
  input: CreateJsonTableInput;
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
export type MutationCreateTArgs = {
  input: CreateTInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationCreateUsCasesAllArgs = {
  input: CreateUsCasesAllInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationCreateUsCountyArgs = {
  input: CreateUsCountyInput;
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
export type MutationCreateYotableArgs = {
  input: CreateYotableInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationCreateYotable2Args = {
  input: CreateYotable2Input;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationDeleteCustomerArgs = {
  input: DeleteCustomerInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationDeleteCustomerByIdArgs = {
  input: DeleteCustomerByIdInput;
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
export type MutationDeleteJsonTableArgs = {
  input: DeleteJsonTableInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationDeleteJsonTableByIdArgs = {
  input: DeleteJsonTableByIdInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationDeleteYotableArgs = {
  input: DeleteYotableInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationDeleteYotableByIdArgs = {
  input: DeleteYotableByIdInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationUpdateCustomerArgs = {
  input: UpdateCustomerInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationUpdateCustomerByIdArgs = {
  input: UpdateCustomerByIdInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationUpdateFipsCodeStateArgs = {
  input: UpdateFipsCodeStateInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationUpdateFipsCodeStateByStateFipsCodeArgs = {
  input: UpdateFipsCodeStateByStateFipsCodeInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationUpdateJsonTableArgs = {
  input: UpdateJsonTableInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationUpdateJsonTableByIdArgs = {
  input: UpdateJsonTableByIdInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationUpdateYotableArgs = {
  input: UpdateYotableInput;
};


/** The root mutation type which contains root level fields which mutate data. */
export type MutationUpdateYotableByIdArgs = {
  input: UpdateYotableByIdInput;
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
  /** Reads and enables pagination through a set of `Customer`. */
  allCustomers?: Maybe<CustomersConnection>;
  /** Reads and enables pagination through a set of `FipsCodeCounty`. */
  allFipsCodeCounties?: Maybe<FipsCodeCountiesConnection>;
  /** Reads and enables pagination through a set of `FipsCodeState`. */
  allFipsCodeStates?: Maybe<FipsCodeStatesConnection>;
  /** Reads and enables pagination through a set of `JsonTable`. */
  allJsonTables?: Maybe<JsonTablesConnection>;
  /** Reads and enables pagination through a set of `MsaCasesAll`. */
  allMsaCasesAlls?: Maybe<MsaCasesAllsConnection>;
  /** Reads and enables pagination through a set of `MsaDefinition`. */
  allMsaDefinitions?: Maybe<MsaDefinitionsConnection>;
  /** Reads and enables pagination through a set of `StateCasesAll`. */
  allStateCasesAlls?: Maybe<StateCasesAllsConnection>;
  /** Reads and enables pagination through a set of `StatesHospitalization`. */
  allStatesHospitalizations?: Maybe<StatesHospitalizationsConnection>;
  /** Reads and enables pagination through a set of `StatesSummary`. */
  allStatesSummaries?: Maybe<StatesSummariesConnection>;
  /** Reads and enables pagination through a set of `StatesTesting`. */
  allStatesTestings?: Maybe<StatesTestingsConnection>;
  /** Reads and enables pagination through a set of `T`. */
  allTs?: Maybe<TsConnection>;
  /** Reads and enables pagination through a set of `UsCasesAll`. */
  allUsCasesAlls?: Maybe<UsCasesAllsConnection>;
  /** Reads and enables pagination through a set of `UsCounty`. */
  allUsCounties?: Maybe<UsCountiesConnection>;
  /** Reads and enables pagination through a set of `UsHospitalization`. */
  allUsHospitalizations?: Maybe<UsHospitalizationsConnection>;
  /** Reads and enables pagination through a set of `UsSummary`. */
  allUsSummaries?: Maybe<UsSummariesConnection>;
  /** Reads and enables pagination through a set of `UsTesting`. */
  allUsTestings?: Maybe<UsTestingsConnection>;
  /** Reads and enables pagination through a set of `Yotable2`. */
  allYotable2S?: Maybe<Yotable2SConnection>;
  /** Reads and enables pagination through a set of `Yotable`. */
  allYotables?: Maybe<YotablesConnection>;
  /** Reads a single `Customer` using its globally unique `ID`. */
  customer?: Maybe<Customer>;
  customerById?: Maybe<Customer>;
  /** Reads a single `FipsCodeState` using its globally unique `ID`. */
  fipsCodeState?: Maybe<FipsCodeState>;
  fipsCodeStateByStateFipsCode?: Maybe<FipsCodeState>;
  /** Reads a single `JsonTable` using its globally unique `ID`. */
  jsonTable?: Maybe<JsonTable>;
  jsonTableById?: Maybe<JsonTable>;
  /** Fetches an object given its globally unique `ID`. */
  node?: Maybe<Node>;
  /** The root query type must be a `Node` to work well with Relay 1 mutations. This just resolves to `query`. */
  nodeId: Scalars['ID'];
  /**
   * Exposes the root query type nested one level down. This is helpful for Relay 1
   * which can only query top level fields if they are in a particular form.
   */
  query: Query;
  /** Reads a single `Yotable` using its globally unique `ID`. */
  yotable?: Maybe<Yotable>;
  yotableById?: Maybe<Yotable>;
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
export type QueryAllCustomersArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<CustomerCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<CustomersOrderBy>>;
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
export type QueryAllJsonTablesArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<JsonTableCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<JsonTablesOrderBy>>;
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
export type QueryAllTsArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<TCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<TsOrderBy>>;
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
export type QueryAllUsCountiesArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<UsCountyCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<UsCountiesOrderBy>>;
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
export type QueryAllYotable2SArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<Yotable2Condition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<Yotable2SOrderBy>>;
};


/** The root query type which gives access points into the data universe. */
export type QueryAllYotablesArgs = {
  after?: Maybe<Scalars['Cursor']>;
  before?: Maybe<Scalars['Cursor']>;
  condition?: Maybe<YotableCondition>;
  first?: Maybe<Scalars['Int']>;
  last?: Maybe<Scalars['Int']>;
  offset?: Maybe<Scalars['Int']>;
  orderBy?: Maybe<Array<YotablesOrderBy>>;
};


/** The root query type which gives access points into the data universe. */
export type QueryCustomerArgs = {
  nodeId: Scalars['ID'];
};


/** The root query type which gives access points into the data universe. */
export type QueryCustomerByIdArgs = {
  id: Scalars['Int'];
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
export type QueryJsonTableArgs = {
  nodeId: Scalars['ID'];
};


/** The root query type which gives access points into the data universe. */
export type QueryJsonTableByIdArgs = {
  id: Scalars['String'];
};


/** The root query type which gives access points into the data universe. */
export type QueryNodeArgs = {
  nodeId: Scalars['ID'];
};


/** The root query type which gives access points into the data universe. */
export type QueryYotableArgs = {
  nodeId: Scalars['ID'];
};


/** The root query type which gives access points into the data universe. */
export type QueryYotableByIdArgs = {
  id: Scalars['Int'];
};

export type StateCasesAll = {
  __typename?: 'StateCasesAll';
  confirmedCases?: Maybe<Scalars['Int']>;
  date?: Maybe<Scalars['String']>;
  deaths?: Maybe<Scalars['Int']>;
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

export type T = {
  __typename?: 'T';
  j?: Maybe<Scalars['JSON']>;
};

/** A condition to be used against `T` object types. All fields are tested for equality and combined with a logical ‘and.’ */
export type TCondition = {
  /** Checks for equality with the object’s `j` field. */
  j?: Maybe<Scalars['JSON']>;
};

/** An input for mutations affecting `T` */
export type TInput = {
  j?: Maybe<Scalars['JSON']>;
};

/** A connection to a list of `T` values. */
export type TsConnection = {
  __typename?: 'TsConnection';
  /** A list of edges which contains the `T` and cursor to aid in pagination. */
  edges: Array<TsEdge>;
  /** A list of `T` objects. */
  nodes: Array<Maybe<T>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  /** The count of *all* `T` you could get from the connection. */
  totalCount: Scalars['Int'];
};

/** A `T` edge in the connection. */
export type TsEdge = {
  __typename?: 'TsEdge';
  /** A cursor for use in pagination. */
  cursor?: Maybe<Scalars['Cursor']>;
  /** The `T` at the end of the edge. */
  node?: Maybe<T>;
};

/** Methods to use when ordering `T`. */
export enum TsOrderBy {
  JAsc = 'J_ASC',
  JDesc = 'J_DESC',
  Natural = 'NATURAL'
}

/** All input for the `updateCustomerById` mutation. */
export type UpdateCustomerByIdInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** An object where the defined keys will be set on the `Customer` being updated. */
  customerPatch: CustomerPatch;
  id: Scalars['Int'];
};

/** All input for the `updateCustomer` mutation. */
export type UpdateCustomerInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** An object where the defined keys will be set on the `Customer` being updated. */
  customerPatch: CustomerPatch;
  /** The globally unique `ID` which will identify a single `Customer` to be updated. */
  nodeId: Scalars['ID'];
};

/** The output of our update `Customer` mutation. */
export type UpdateCustomerPayload = {
  __typename?: 'UpdateCustomerPayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `Customer` that was updated by this mutation. */
  customer?: Maybe<Customer>;
  /** An edge for our `Customer`. May be used by Relay 1. */
  customerEdge?: Maybe<CustomersEdge>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
};


/** The output of our update `Customer` mutation. */
export type UpdateCustomerPayloadCustomerEdgeArgs = {
  orderBy?: Maybe<Array<CustomersOrderBy>>;
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

/** All input for the `updateJsonTableById` mutation. */
export type UpdateJsonTableByIdInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  id: Scalars['String'];
  /** An object where the defined keys will be set on the `JsonTable` being updated. */
  jsonTablePatch: JsonTablePatch;
};

/** All input for the `updateJsonTable` mutation. */
export type UpdateJsonTableInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** An object where the defined keys will be set on the `JsonTable` being updated. */
  jsonTablePatch: JsonTablePatch;
  /** The globally unique `ID` which will identify a single `JsonTable` to be updated. */
  nodeId: Scalars['ID'];
};

/** The output of our update `JsonTable` mutation. */
export type UpdateJsonTablePayload = {
  __typename?: 'UpdateJsonTablePayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The `JsonTable` that was updated by this mutation. */
  jsonTable?: Maybe<JsonTable>;
  /** An edge for our `JsonTable`. May be used by Relay 1. */
  jsonTableEdge?: Maybe<JsonTablesEdge>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
};


/** The output of our update `JsonTable` mutation. */
export type UpdateJsonTablePayloadJsonTableEdgeArgs = {
  orderBy?: Maybe<Array<JsonTablesOrderBy>>;
};

/** All input for the `updateYotableById` mutation. */
export type UpdateYotableByIdInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  id: Scalars['Int'];
  /** An object where the defined keys will be set on the `Yotable` being updated. */
  yotablePatch: YotablePatch;
};

/** All input for the `updateYotable` mutation. */
export type UpdateYotableInput = {
  /**
   * An arbitrary string value with no semantic meaning. Will be included in the
   * payload verbatim. May be used to track mutations by the client.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** The globally unique `ID` which will identify a single `Yotable` to be updated. */
  nodeId: Scalars['ID'];
  /** An object where the defined keys will be set on the `Yotable` being updated. */
  yotablePatch: YotablePatch;
};

/** The output of our update `Yotable` mutation. */
export type UpdateYotablePayload = {
  __typename?: 'UpdateYotablePayload';
  /**
   * The exact same `clientMutationId` that was provided in the mutation input,
   * unchanged and unused. May be used by a client to track mutations.
   */
  clientMutationId?: Maybe<Scalars['String']>;
  /** Our root query field type. Allows us to run any query from our mutation payload. */
  query?: Maybe<Query>;
  /** The `Yotable` that was updated by this mutation. */
  yotable?: Maybe<Yotable>;
  /** An edge for our `Yotable`. May be used by Relay 1. */
  yotableEdge?: Maybe<YotablesEdge>;
};


/** The output of our update `Yotable` mutation. */
export type UpdateYotablePayloadYotableEdgeArgs = {
  orderBy?: Maybe<Array<YotablesOrderBy>>;
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

/** A connection to a list of `UsCounty` values. */
export type UsCountiesConnection = {
  __typename?: 'UsCountiesConnection';
  /** A list of edges which contains the `UsCounty` and cursor to aid in pagination. */
  edges: Array<UsCountiesEdge>;
  /** A list of `UsCounty` objects. */
  nodes: Array<Maybe<UsCounty>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  /** The count of *all* `UsCounty` you could get from the connection. */
  totalCount: Scalars['Int'];
};

/** A `UsCounty` edge in the connection. */
export type UsCountiesEdge = {
  __typename?: 'UsCountiesEdge';
  /** A cursor for use in pagination. */
  cursor?: Maybe<Scalars['Cursor']>;
  /** The `UsCounty` at the end of the edge. */
  node?: Maybe<UsCounty>;
};

/** Methods to use when ordering `UsCounty`. */
export enum UsCountiesOrderBy {
  CasesAsc = 'CASES_ASC',
  CasesDesc = 'CASES_DESC',
  CountyAsc = 'COUNTY_ASC',
  CountyDesc = 'COUNTY_DESC',
  DateAsc = 'DATE_ASC',
  DateDesc = 'DATE_DESC',
  DeathsAsc = 'DEATHS_ASC',
  DeathsDesc = 'DEATHS_DESC',
  FipsAsc = 'FIPS_ASC',
  FipsDesc = 'FIPS_DESC',
  Natural = 'NATURAL',
  StateAsc = 'STATE_ASC',
  StateDesc = 'STATE_DESC'
}

export type UsCounty = {
  __typename?: 'UsCounty';
  cases?: Maybe<Scalars['Int']>;
  county?: Maybe<Scalars['String']>;
  date?: Maybe<Scalars['String']>;
  deaths?: Maybe<Scalars['Int']>;
  fips?: Maybe<Scalars['String']>;
  state?: Maybe<Scalars['String']>;
};

/**
 * A condition to be used against `UsCounty` object types. All fields are tested
 * for equality and combined with a logical ‘and.’
 */
export type UsCountyCondition = {
  /** Checks for equality with the object’s `cases` field. */
  cases?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `county` field. */
  county?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `date` field. */
  date?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `deaths` field. */
  deaths?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `fips` field. */
  fips?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `state` field. */
  state?: Maybe<Scalars['String']>;
};

/** An input for mutations affecting `UsCounty` */
export type UsCountyInput = {
  cases?: Maybe<Scalars['Int']>;
  county?: Maybe<Scalars['String']>;
  date?: Maybe<Scalars['String']>;
  deaths?: Maybe<Scalars['Int']>;
  fips?: Maybe<Scalars['String']>;
  state?: Maybe<Scalars['String']>;
};

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

export type Yotable = Node & {
  __typename?: 'Yotable';
  fips?: Maybe<Scalars['String']>;
  id: Scalars['Int'];
  name: Scalars['String'];
  /** A globally unique identifier. Can be used in various places throughout the system to identify this single value. */
  nodeId: Scalars['ID'];
  provinceState?: Maybe<Scalars['String']>;
};

export type Yotable2 = {
  __typename?: 'Yotable2';
  fips?: Maybe<Scalars['String']>;
  provinceState?: Maybe<Scalars['String']>;
};

/**
 * A condition to be used against `Yotable2` object types. All fields are tested
 * for equality and combined with a logical ‘and.’
 */
export type Yotable2Condition = {
  /** Checks for equality with the object’s `fips` field. */
  fips?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `provinceState` field. */
  provinceState?: Maybe<Scalars['String']>;
};

/** An input for mutations affecting `Yotable2` */
export type Yotable2Input = {
  fips?: Maybe<Scalars['String']>;
  provinceState?: Maybe<Scalars['String']>;
};

/** A connection to a list of `Yotable2` values. */
export type Yotable2SConnection = {
  __typename?: 'Yotable2SConnection';
  /** A list of edges which contains the `Yotable2` and cursor to aid in pagination. */
  edges: Array<Yotable2SEdge>;
  /** A list of `Yotable2` objects. */
  nodes: Array<Maybe<Yotable2>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  /** The count of *all* `Yotable2` you could get from the connection. */
  totalCount: Scalars['Int'];
};

/** A `Yotable2` edge in the connection. */
export type Yotable2SEdge = {
  __typename?: 'Yotable2SEdge';
  /** A cursor for use in pagination. */
  cursor?: Maybe<Scalars['Cursor']>;
  /** The `Yotable2` at the end of the edge. */
  node?: Maybe<Yotable2>;
};

/** Methods to use when ordering `Yotable2`. */
export enum Yotable2SOrderBy {
  FipsAsc = 'FIPS_ASC',
  FipsDesc = 'FIPS_DESC',
  Natural = 'NATURAL',
  ProvinceStateAsc = 'PROVINCE_STATE_ASC',
  ProvinceStateDesc = 'PROVINCE_STATE_DESC'
}

/** A condition to be used against `Yotable` object types. All fields are tested for equality and combined with a logical ‘and.’ */
export type YotableCondition = {
  /** Checks for equality with the object’s `fips` field. */
  fips?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `id` field. */
  id?: Maybe<Scalars['Int']>;
  /** Checks for equality with the object’s `name` field. */
  name?: Maybe<Scalars['String']>;
  /** Checks for equality with the object’s `provinceState` field. */
  provinceState?: Maybe<Scalars['String']>;
};

/** An input for mutations affecting `Yotable` */
export type YotableInput = {
  fips?: Maybe<Scalars['String']>;
  id: Scalars['Int'];
  name: Scalars['String'];
  provinceState?: Maybe<Scalars['String']>;
};

/** Represents an update to a `Yotable`. Fields that are set will be updated. */
export type YotablePatch = {
  fips?: Maybe<Scalars['String']>;
  id?: Maybe<Scalars['Int']>;
  name?: Maybe<Scalars['String']>;
  provinceState?: Maybe<Scalars['String']>;
};

/** A connection to a list of `Yotable` values. */
export type YotablesConnection = {
  __typename?: 'YotablesConnection';
  /** A list of edges which contains the `Yotable` and cursor to aid in pagination. */
  edges: Array<YotablesEdge>;
  /** A list of `Yotable` objects. */
  nodes: Array<Maybe<Yotable>>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  /** The count of *all* `Yotable` you could get from the connection. */
  totalCount: Scalars['Int'];
};

/** A `Yotable` edge in the connection. */
export type YotablesEdge = {
  __typename?: 'YotablesEdge';
  /** A cursor for use in pagination. */
  cursor?: Maybe<Scalars['Cursor']>;
  /** The `Yotable` at the end of the edge. */
  node?: Maybe<Yotable>;
};

/** Methods to use when ordering `Yotable`. */
export enum YotablesOrderBy {
  FipsAsc = 'FIPS_ASC',
  FipsDesc = 'FIPS_DESC',
  IdAsc = 'ID_ASC',
  IdDesc = 'ID_DESC',
  NameAsc = 'NAME_ASC',
  NameDesc = 'NAME_DESC',
  Natural = 'NATURAL',
  PrimaryKeyAsc = 'PRIMARY_KEY_ASC',
  PrimaryKeyDesc = 'PRIMARY_KEY_DESC',
  ProvinceStateAsc = 'PROVINCE_STATE_ASC',
  ProvinceStateDesc = 'PROVINCE_STATE_DESC'
}

export type StateByFipsQueryVariables = Exact<{
  fips?: Maybe<Scalars['String']>;
}>;


export type StateByFipsQuery = { __typename?: 'Query', allFipsCodeStates?: Maybe<{ __typename?: 'FipsCodeStatesConnection', nodes: Array<Maybe<{ __typename?: 'FipsCodeState', statePostalAbbreviation?: Maybe<string>, stateName?: Maybe<string>, stateGnisid?: Maybe<string> }>> }> };

export type StatesQueryVariables = Exact<{ [key: string]: never; }>;


export type StatesQuery = { __typename?: 'Query', allFipsCodeStates?: Maybe<{ __typename?: 'FipsCodeStatesConnection', nodes: Array<Maybe<{ __typename?: 'FipsCodeState', statePostalAbbreviation?: Maybe<string>, stateName?: Maybe<string>, stateGnisid?: Maybe<string>, fipsCodeCountiesByStateFipsCode: { __typename?: 'FipsCodeCountiesConnection', nodes: Array<Maybe<{ __typename?: 'FipsCodeCounty', areaName?: Maybe<string> }>> } }>> }> };


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