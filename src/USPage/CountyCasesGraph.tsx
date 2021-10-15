import { AdvancedGraph } from '../components/AdvanceGraph';
import { DataSeries } from '../components/DataSeries';
import { CountyCasesAll, CountySummaryView } from '../generated/graphql';
import { CovidColor } from './CovidColor';

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
            // title={`${county.countyName} Confirmed Cases`}
            title={""}
            serieses={[
              {
                series: DataSeries.fromGraphQLQueryNodes(
                  "Confirmed",
                  cases,
                  "confirmedCases"
                ),
                color: CovidColor.confirmed,
              },
              {
                series: DataSeries.fromGraphQLQueryNodes(
                  "",
                  cases,
                  "confirmedCases"
                )
                  .change()
                  .setLabel("New"),
                color: CovidColor.confirmedNew,
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
                  "Deaths",
                  cases,
                  "deaths"
                ),
                color: CovidColor.deaths,
              },
              {
                series: DataSeries.fromGraphQLQueryNodes(
                  "",
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
        </>
      )}
    </div>
  );
};
