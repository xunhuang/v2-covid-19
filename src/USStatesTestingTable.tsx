import { useUsStatesTestingTableQuery } from "./generated/graphql";
import React from "react";
import { percentage1Decimal, shortNumber, Table } from "./NewSortableTable";

export const USStateTestingTable = () => {
  const { data, loading } = useUsStatesTestingTableQuery();
  const nodes = data?.allStateSummaryViews?.nodes;
  const list =
    nodes && [...nodes].sort((s1, s2) => s2?.positive! - s1?.positive!);

  const columns = React.useMemo(
    () => [
      {
        Header: "States",
        accessor: "stateName",
      },
      {
        Header: "pos",
        accessor: "positive",
        Cell: shortNumber,
      },
      {
        Header: "Pos %",
        accessor: ({ positive, totalTestResults }: any) =>
          positive / totalTestResults,
        Cell: percentage1Decimal,
        sortDescFirst: true,
      },
      {
        Header: "Neg",
        accessor: "negative",
        Cell: shortNumber,
      },
      {
        Header: "Neg %",
        accessor: ({ negative, totalTestResults }: any) =>
          negative / totalTestResults,
        Cell: percentage1Decimal,
      },
      {
        Header: "Test Coverage",
        accessor: ({ totalTestResults, population }: any) =>
          totalTestResults / population,
        Cell: percentage1Decimal,
      },
      {
        Header: "Total Tests",
        accessor: "totalTestResults",
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
