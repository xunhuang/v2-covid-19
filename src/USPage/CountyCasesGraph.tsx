import { AdvancedGraph } from '../components/AdvanceGraph';
import { DataSeries } from '../components/DataSeries';
import { CountyCasesAll, CountySummaryView } from '../generated/graphql';

type CountyCasesProp = {
  county: CountySummaryView;
  cases: Array<CountyCasesAll>;
};
export const CountyCasesGraph = ({ county, cases }: CountyCasesProp) => {
  return (
    <div>
      {cases && (
        <>
          <AdvancedGraph
            title={`${county.countyName} Confirmed Cases`}
            serieses={[
              {
                series: DataSeries.fromGraphQLQueryNodes(
                  "Confirmed",
                  cases,
                  "confirmedCases"
                ),
                color: "red",
              },
              {
                series: DataSeries.fromGraphQLQueryNodes(
                  "Changes",
                  cases,
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
            title={`${county.countyName} Deaths`}
            serieses={[
              {
                series: DataSeries.fromGraphQLQueryNodes(
                  "Confirmed",
                  cases,
                  "deaths"
                ),
                color: "red",
              },
              {
                series: DataSeries.fromGraphQLQueryNodes(
                  "Changes",
                  cases,
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
