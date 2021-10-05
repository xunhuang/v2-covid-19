import { AdvancedGraph } from '../components/AdvanceGraph';
import { DataSeries } from '../components/DataSeries';
import { useUsCasesQuery } from '../generated/graphql';

export const UsCasesGraph = () => {
  const { data, loading } = useUsCasesQuery();
  return (
    <div>
      {loading && <div>loading</div>}
      {data && (
        <>
          <AdvancedGraph
            title="US Confirmed Cases"
            serieses={[
              {
                series: DataSeries.fromGraphQLQueryNodes(
                  "Confirmed",
                  data.allUsCasesAlls?.nodes! as object[],
                  "confirmedCases"
                ),
                color: "red",
              },
              {
                series: DataSeries.fromGraphQLQueryNodes(
                  "Changes",
                  data.allUsCasesAlls?.nodes! as object[],
                  "confirmedCases"
                ).change(),
                color: "green",
                rightAxis: true,
                covidspecial: true,
                showMovingAverage: true,
              },
            ]}
            initNumberOfDays={360}
          />
          <AdvancedGraph
            title="US Deaths"
            serieses={[
              {
                series: DataSeries.fromGraphQLQueryNodes(
                  "Confirmed",
                  data.allUsCasesAlls?.nodes! as object[],
                  "deaths"
                ),
                color: "red",
              },
              {
                series: DataSeries.fromGraphQLQueryNodes(
                  "Changes",
                  data.allUsCasesAlls?.nodes! as object[],
                  "deaths"
                ).change(),
                color: "green",
                rightAxis: true,
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