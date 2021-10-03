import { useUsStatesCasesTableQuery } from "./generated/graphql";
import React from "react";
import { shortNumber, Table } from "./NewSortableTable";

// Components are typed with props
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
        accessor: (cell: any) => {
          console.log(cell);
          return (cell.confirmedCases * 1000000) / cell.population;
        },
        Cell: shortNumber,
      },
      {
        Header: "Pop.",
        accessor: "population",
        Cell: shortNumber,
      },
    ],
    []
  );

  return (
    <div>
      <p>Hello </p>
      {loading && <div>loading</div>}
      {list && <Table columns={columns} data={list! as Array<object>} />}
    </div>
  );
};
