import { AdvancedGraph } from '../components/AdvanceGraph';
import { DataSeries } from '../components/DataSeries';
import { CountyCasesAll, CountySummaryView } from '../generated/graphql';

type CountyDailyProp = {
  county: CountySummaryView;
  cases: Array<CountyCasesAll>;
};
export const CountyDailyGraph = ({ county, cases }: CountyDailyProp) => {
  return (
    <div>
      {cases && (
        <AdvancedGraph
          title={`${county.countyName} Confirmed Cases`}
          serieses={[
            {
              series: DataSeries.fromGraphQLQueryNodes(
                "Positives",
                cases,
                "confirmedCases"
              ).change(),
              color: "red",
              covidspecial: true,
              showMovingAverage: true,
            },
            {
              series: DataSeries.fromGraphQLQueryNodes(
                "Deaths",
                cases,
                "deaths"
              ).change(),
              color: "black",
              rightAxis: true,
              covidspecial: true,
              showMovingAverage: true,
            },
          ]}
          initNumberOfDays={360}
        />
      )}
    </div>
  );
};
