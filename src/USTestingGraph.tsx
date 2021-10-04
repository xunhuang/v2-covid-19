import { AdvancedGraph } from "./components/AdvanceGraph";
import { DataSeries } from "./components/DataSeries";
import { useUsTestingQuery } from "./generated/graphql";

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
