import React from 'react';
import { Link } from 'react-router-dom';

import { CountySummaryView, FipsCodeState } from '../generated/graphql';
import { shortNumber, Table } from '../NewSortableTable';

export const stateLink = ({ cell }: any) => {
  return (
    <Link to={`county/${cell.row.original.countyFipsCode}`}>{cell.value}</Link>
  );
};

type CountyCasesProp = {
  state: FipsCodeState;
  countiesTable: Array<CountySummaryView>;
};

export const StateCountiesCasesTable = ({
  state,
  countiesTable,
}: CountyCasesProp) => {
  const table = [...countiesTable].sort(
    (s1, s2) => s2?.confirmedCases! - s1?.confirmedCases!
  );

  const columns = React.useMemo(
    () => [
      {
        Header: "Counties",
        accessor: "countyName",
        Cell: stateLink,
      },
      {
        Header: "Total",
        accessor: "confirmedCases",
        Cell: shortNumber,
      },
      {
        Header: "New",
        accessor: "confirmedIncrease",
        Cell: shortNumber,
        sortDescFirst: true,
      },
      {
        Header: "Deaths",
        accessor: "deaths",
        Cell: shortNumber,
      },
      {
        Header: "Deaths+",
        accessor: "deathIncrease",
        Cell: shortNumber,
      },
      {
        Header: "#/Mil.",
        accessor: ({ confirmedCases, population }: any) =>
          (confirmedCases * 1000000) / population,
        Cell: shortNumber,
      },
    ],
    []
  );

  return (
    <div>
      <Table columns={columns} data={table} />
    </div>
  );
};

export const StateCountiesCapitaTable = ({
  state,
  countiesTable,
}: CountyCasesProp) => {
  const table = [...countiesTable].sort(
    (s1, s2) => s2?.confirmedCases! - s1?.confirmedCases!
  );

  const columns = React.useMemo(
    () => [
      {
        Header: "Counties",
        accessor: "countyName",
        Cell: stateLink,
      },
      {
        Header: "Total",
        accessor: "confirmedCases",
        Cell: shortNumber,
      },
      {
        Header: "#/Mil.",
        accessor: ({ confirmedCases, population }: any) =>
          (confirmedCases * 1000000) / population,
        Cell: shortNumber,
      },
      {
        Header: "Deaths",
        accessor: "deaths",
        Cell: shortNumber,
      },
      {
        Header: "Deaths/Mil.",
        accessor: ({ deaths, population }: any) =>
          (deaths * 1000000) / population,
        Cell: shortNumber,
      },
      {
        Header: "Pop",
        accessor: "population",
        Cell: shortNumber,
      },
    ],
    []
  );

  return (
    <div>
      <Table columns={columns} data={table} />
    </div>
  );
};
