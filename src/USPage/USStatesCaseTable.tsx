import React from 'react';

import { useUsStatesCasesTableQuery } from '../generated/graphql';
import { shortNumber, Table } from '../NewSortableTable';

export const USStateCasesTable = () => {
  const { data, loading } = useUsStatesCasesTableQuery();
  const nodes = data?.allStateSummaryViews?.nodes;
  const list =
    nodes &&
    [...nodes].sort((s1, s2) => s2?.confirmedCases! - s1?.confirmedCases!);

  const columns = React.useMemo(
    () => [
      {
        Header: "States",
        accessor: "stateName",
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
      {loading && <div>loading</div>}
      {list && <Table columns={columns} data={list! as Array<object>} />}
    </div>
  );
};
