import { AdvancedCovidGraph } from '../components/AdvanceGraphCovid';
import { DataSeries } from '../components/DataSeries';
import { CovidColor } from './CovidColor';

export interface CasesObject {
  date?: string;
  confirmedCases: number;
  deaths: number;
}

type CasesGraphProp = {
  cases: CasesObject[];
};

export const CasesGraph = ({ cases }: CasesGraphProp) => {
  return (
    <div>
      {cases && (
        <>
          <AdvancedCovidGraph
            title={"Confirmed Cases"}
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
          <AdvancedCovidGraph
            title={`Deaths`}
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
