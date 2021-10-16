import React from 'react';
import { Link } from 'react-router-dom';
import styled from 'styled-components';

import { CountySummaryView } from '../generated/graphql';
import { shortNumber, Table } from '../NewSortableTable';

export const StateDiv = styled.div`
  width: 100%;
  text-align: left;
`;

export const stateLink = ({ cell }: any) => {
  return (
    <StateDiv>
      <Link to={`/county/${cell.row.original.countyFipsCode}`}>
        {cell.value}
      </Link>
    </StateDiv>
  );
};

type CountyCasesProp = {
  countiesTable: Array<CountySummaryView>;
};

export const StateCountiesCasesTable = ({ countiesTable }: CountyCasesProp) => {
  const table = [...countiesTable].sort(
    (s1, s2) => s2?.confirmedCases! - s1?.confirmedCases!
  );

  const columns = React.useMemo(
    () => [
      {
        Header: "Name",
        accessor: "countyName",
        Cell: stateLink,
      },
      {
        Header: "Total",
        accessor: "confirmedCases",
        // Cell: shortNumber,
      },
      {
        Header: "New",
        accessor: "confirmedIncrease",
        Cell: shortNumber,
        sortDescFirst: true,
      },
      {
        Header: "#/Mil",
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
        Header: "Deaths+",
        accessor: "deathIncrease",
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
