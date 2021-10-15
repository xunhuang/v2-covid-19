import { AdvancedCovidGraph } from '../components/AdvanceGraphCovid';
import { DataSeries } from '../components/DataSeries';
import { CountyCasesAll, CountySummaryView } from '../generated/graphql';
import { CovidColor } from './CovidColor';

type CountyDailyProp = {
  county: CountySummaryView;
  cases: Array<CountyCasesAll>;
};
export const CountyDailyGraph = ({ county, cases }: CountyDailyProp) => {
  return (
    <div>
      {cases && (
        <AdvancedCovidGraph
          title={`${county.countyName} Confirmed Cases`}
          serieses={[
            {
              series: DataSeries.fromGraphQLQueryNodes(
                "Positives",
                cases,
                "confirmedCases"
              ).change(),
              color: CovidColor.confirmedNew,
              covidspecial: true,
              showMovingAverage: true,
            },
            {
              series: DataSeries.fromGraphQLQueryNodes(
                "Deaths",
                cases,
                "deaths"
              ).change(),
              color: CovidColor.deathsNew,
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
