import { useTable, useSortBy, Column } from "react-table";
import React from "react";
import { myShortNumber } from "./components/AdvanceGraph";

export const shortNumber = ({ cell }: any) => {
  return <div>{myShortNumber(cell.value)}</div>;
};

export const percentage1Decimal = ({ cell }: any) => {
  return <div>{Math.round(cell.value * 1000) / 10}%</div>;
};

export const shortWholeNumber = ({ cell }: any) => {
  return <div>{myShortNumber(Math.floor(cell.value))}</div>;
};

interface Props {
  columns: Array<Column<object>>;
  data: Array<object>;
}
export const Table: React.FC<Props> = ({ columns, data }) => {
  const { getTableProps, getTableBodyProps, headerGroups, rows, prepareRow } =
    useTable(
      {
        columns,
        data,
      },
      useSortBy
    );

  // We don't want to render all 2000 rows for this example, so cap
  // it at 20 for this use case
  // const firstPageRows = rows.slice(0, 20);
  const firstPageRows = rows;

  return (
    <>
      <table {...getTableProps()}>
        <thead>
          {headerGroups.map((headerGroup) => (
            <tr {...headerGroup.getHeaderGroupProps()}>
              {headerGroup.headers.map((column) => (
                // Add the sorting props to control sorting. For this example
                // we can add them into the header props
                <th {...column.getHeaderProps(column.getSortByToggleProps())}>
                  {column.render("Header")}
                  {/* Add a sort direction indicator */}
                  <span>
                    {column.isSorted ? (column.isSortedDesc ? " ↓" : " ↑") : ""}
                  </span>
                </th>
              ))}
            </tr>
          ))}
        </thead>
        <tbody {...getTableBodyProps()}>
          {firstPageRows.map((row, i) => {
            prepareRow(row);
            return (
              <tr {...row.getRowProps()}>
                {row.cells.map((cell) => {
                  return (
                    <td {...cell.getCellProps()}>{cell.render("Cell")}</td>
                  );
                })}
              </tr>
            );
          })}
        </tbody>
      </table>
      {/* <br />
            <div>Showing the first 20 results of {rows.length} rows</div> */}
    </>
  );
};