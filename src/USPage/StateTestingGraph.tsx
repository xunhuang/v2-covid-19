import { AdvancedGraph } from '../components/AdvanceGraph';
import { DataSeries } from '../components/DataSeries';
import { FipsCodeState, StatesTesting } from '../generated/graphql';

type StateTestingProp = {
  state: FipsCodeState;
  testing: Array<StatesTesting>;
};

export const StateTestingGraphs = ({ state, testing }: StateTestingProp) => {
  return (
    <>
      <StateTest7DayPositivityEffortGraph state={state} testing={testing} />
      <StateTestingEffortGraph state={state} testing={testing} />
    </>
  );
};

export const StateTestingEffortGraph = ({
  state,
  testing,
}: StateTestingProp) => {
  return (
    <>
      <AdvancedGraph
        title={`${state.stateName} Testing Effort`}
        serieses={[
          {
            series: DataSeries.fromGraphQLQueryNodes(
              "Total Testing",
              testing,
              "totalTestResults"
            ).change(),
            color: "green",
            covidspecial: true,
            showMovingAverage: true,
          },
          {
            series: DataSeries.fromGraphQLQueryNodes(
              "Postives",
              testing,
              "positive"
            ).change(),
            color: "red",
            covidspecial: true,
            showMovingAverage: true,
          },
        ]}
        initNumberOfDays={360}
      />
    </>
  );
};

export const StateTest7DayPositivityEffortGraph = ({
  state,
  testing,
}: StateTestingProp) => {
  let positiveDaily = DataSeries.fromGraphQLQueryNodes(
    "Positives",
    testing,
    "positive"
  )
    .change()
    .nDayAverage(7);
  let testedDaily = DataSeries.fromGraphQLQueryNodes(
    "daily",
    testing,
    "totalTestResults"
  )
    .change()
    .nDayAverage(7);

  let rate = positiveDaily.divide(testedDaily).setLabel("Positive Rate 7-days");

  return (
    <AdvancedGraph
      title={`${state.stateName} 7-Day Positivity Rate`}
      serieses={[
        {
          series: rate,
          color: "green",
        },
      ]}
      initNumberOfDays={360}
    />
  );
};
