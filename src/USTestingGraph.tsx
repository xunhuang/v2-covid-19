import { AdvancedGraph } from "./components/AdvanceGraph";
import { DataSeries } from "./components/DataSeries";
import { useUsTestingQuery } from "./generated/graphql";

export const USTestingGraphs = () => {
  return (
    <>
      <UsTest7DayPositivityEffortGraph />
      <UsTestingEffortGraph />
    </>
  );
};

export const UsTestingEffortGraph = () => {
  const { data, loading } = useUsTestingQuery();
  return (
    <div>
      {loading && <div>loading</div>}
      {data && (
        <>
          <AdvancedGraph
            title="US Testing Effort"
            serieses={[
              {
                series: DataSeries.fromGraphQLQueryNodes(
                  "Total Testing",
                  data.allUsTestings?.nodes! as object[],
                  "totalTestResults"
                ).change(),
                color: "green",
                covidspecial: true,
                showMovingAverage: true,
              },
              {
                series: DataSeries.fromGraphQLQueryNodes(
                  "Postives",
                  data.allUsTestings?.nodes! as object[],
                  "positive"
                ).change(),
                color: "red",
                covidspecial: true,
                showMovingAverage: true,
              },
            ]}
            initNumberOfDays={360}
          />
        </>
      )}
    </div>
  );
};

export const UsTest7DayPositivityEffortGraph = () => {
  const { data, loading } = useUsTestingQuery();

  if (data) {
    let positiveDaily = DataSeries.fromGraphQLQueryNodes(
      "Positives",
      data?.allUsTestings?.nodes! as object[],
      "positive"
    )
      .change()
      .nDayAverage(7);
    let testedDaily = DataSeries.fromGraphQLQueryNodes(
      "daily",
      data?.allUsTestings?.nodes! as object[],
      "totalTestResults"
    )
      .change()
      .nDayAverage(7);

    let rate = positiveDaily
      .divide(testedDaily)
      .setLabel("Positive Rate 7-days");

    return (
      <div>
        {loading && <div>loading</div>}
        {data && (
          <AdvancedGraph
            title="US 7-Day Positivity Rate"
            serieses={[
              {
                series: rate,
                color: "green",
              },
            ]}
            initNumberOfDays={360}
          />
        )}
      </div>
    );
  }

  return <div>loading</div>;
};