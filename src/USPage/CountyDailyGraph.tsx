import { AdvancedCovidGraph } from '../components/AdvanceGraphCovid';
import { DataSeries } from '../components/DataSeries';
import { CasesObject } from './CasesGraph';
import { CovidColor } from './CovidColor';

type DailyProp = {
  cases: Array<CasesObject>;
};
export const DailyGraph = ({ cases }: DailyProp) => {
  return (
    <div>
      {cases && (
        <AdvancedCovidGraph
          title={``}
          serieses={[
            {
              series: DataSeries.fromGraphQLQueryNodes(
                "Positives",
                cases,
                "confirmedCases"
              )
                .change()
                .setLabel("Positives"),
              color: CovidColor.confirmedNew,
              covidspecial: true,
              showMovingAverage: true,
            },
            {
              series: DataSeries.fromGraphQLQueryNodes(
                "Deaths",
                cases,
                "deaths"
              )
                .change()
                .setLabel("Deaths"),
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
