import { AdvancedCovidGraph } from '../components/AdvanceGraphCovid';
import { DataSeries } from '../components/DataSeries';
import { StateCasesAllsConnection, StateSummaryView } from '../generated/graphql';

type StateCasesProp = {
  state: StateSummaryView;
  cases: StateCasesAllsConnection;
};
export const StateCasesGraph = ({ state, cases }: StateCasesProp) => {
  return (
    <div>
      {cases && (
        <>
          <AdvancedCovidGraph
            title={`${state.stateName} Confirmed Cases`}
            serieses={[
              {
                series: DataSeries.fromGraphQLQueryNodes(
                  "Confirmed",
                  cases.nodes! as object[],
                  "confirmedCases"
                ),
                color: "red",
              },
              {
                series: DataSeries.fromGraphQLQueryNodes(
                  "Changes",
                  cases.nodes! as object[],
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
          <AdvancedCovidGraph
            title={`${state.stateName} Deaths`}
            serieses={[
              {
                series: DataSeries.fromGraphQLQueryNodes(
                  "Confirmed",
                  cases.nodes! as object[],
                  "deaths"
                ),
                color: "red",
              },
              {
                series: DataSeries.fromGraphQLQueryNodes(
                  "Changes",
                  cases.nodes! as object[],
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
