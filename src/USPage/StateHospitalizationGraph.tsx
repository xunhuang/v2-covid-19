import { AdvancedGraph } from '../components/AdvanceGraph';
import { DataSeries } from '../components/DataSeries';
import { StatesHospitalization, StateSummaryView } from '../generated/graphql';

type StateHospitalizationProp = {
  state: StateSummaryView;
  hospitalization: Array<StatesHospitalization>;
};

export const StateHospitalizationGraph = ({
  state,
  hospitalization,
}: StateHospitalizationProp) => {
  return (
    <AdvancedGraph
      title={`${state.stateName} Hospitalization`}
      serieses={[
        {
          series: DataSeries.fromGraphQLQueryNodes(
            "Hospitalized",
            hospitalization,
            "hospitalizedCurrently"
          ).change(),
          color: "blue",
          covidspecial: true,
          showMovingAverage: true,
        },
        {
          series: DataSeries.fromGraphQLQueryNodes(
            "inICU",
            hospitalization,
            "inIcuCurrently"
          ).change(),
          color: "red",
          covidspecial: true,
          showMovingAverage: true,
        },
      ]}
      initNumberOfDays={360}
    />
  );
};
