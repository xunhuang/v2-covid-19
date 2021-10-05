import { AdvancedGraph } from '../components/AdvanceGraph';
import { DataSeries } from '../components/DataSeries';
import { FipsCodeState, StateCasesAllsConnection } from '../generated/graphql';

type StateCasesProp = {
  state: FipsCodeState;
  cases: StateCasesAllsConnection;
};
export const StateCasesGraph = ({ state, cases }: StateCasesProp) => {
  return (
    <div>
      {cases && (
        <>
          <AdvancedGraph
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
          <AdvancedGraph
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
