import { useUsStatesCasesTableQuery } from "./generated/graphql";
import React from "react";
import { shortNumber, shortWholeNumber, Table } from "./NewSortableTable";

export const USStateCasesCapita = () => {
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
        Header: "#/Mil.",
        accessor: ({ confirmedCases, population }: any) =>
          (confirmedCases * 1000000) / population,
        Cell: shortWholeNumber,
      },
      {
        Header: "Deaths",
        accessor: "deaths",
        Cell: shortNumber,
      },
      {
        Header: "Deaths/Mil",
        accessor: ({ deaths, population }: any) =>
          (deaths * 1000000) / population,
        Cell: shortWholeNumber,
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
      {loading && <div>loading</div>}
      {list && <Table columns={columns} data={list! as Array<object>} />}
    </div>
  );
};
