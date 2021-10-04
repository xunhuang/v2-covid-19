import { AdvancedGraph } from '../components/AdvanceGraph';
import { DataSeries } from '../components/DataSeries';
import { useUsCasesQuery } from '../generated/graphql';

export const UsDailyGraph = () => {
  const { data, loading } = useUsCasesQuery();
  return (
    <div>
      {loading && <div>loading</div>}
      {data && (
        <>
          <AdvancedGraph
            title="US Daily"
            serieses={[
              {
                series: DataSeries.fromGraphQLQueryNodes(
                  "Confirmed",
                  data.allUsCasesAlls?.nodes! as object[],
                  "confirmedCases"
                ).change(),
                color: "green",
                covidspecial: true,
                showMovingAverage: true,
              },
              {
                series: DataSeries.fromGraphQLQueryNodes(
                  "Deaths",
                  data.allUsCasesAlls?.nodes! as object[],
                  "deaths"
                ).change(),
                color: "red",
                rightAxis: true,
                covidspecial: true,
                showMovingAverage: true,
              },
            ]}
            initNumberOfDays={360}
          />
          TODO: NEED HOSPITALIZATION, but not testing.
        </>
      )}
    </div>
  );
};
