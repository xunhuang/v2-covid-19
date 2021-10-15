import { AdvancedCovidGraph } from '../components/AdvanceGraphCovid';
import { DataSeries } from '../components/DataSeries';
import { StateSummaryView, useStateVaccinationQuery } from '../generated/graphql';

type StateVaccinationProp = {
  state: StateSummaryView;
};

export const StateVaccinationGraph = ({ state }: StateVaccinationProp) => {
  const { data, loading } = useStateVaccinationQuery({
    variables: {
      state_fips_code: state.stateFipsCode,
    },
  });
  const nodes =
    data?.allStateSummaryViews?.nodes[0]?.stateVaccinationsByStateFipsCode
      .nodes;
  return (
    <div>
      {loading && <div>loading</div>}
      {/* {!loading && <div>done loading</div>} */}
      {nodes && (
        <>
          <AdvancedCovidGraph
            title=""
            serieses={[
              {
                series: DataSeries.fromGraphQLQueryNodes(
                  "Fully Vaccinated",
                  nodes! as object[],
                  "full"
                ).setLabel("Fully Vaccinated"),
                color: "green",
                covidspecial: true,
              },
              {
                series: DataSeries.fromGraphQLQueryNodes(
                  "1st dose",
                  nodes! as object[],
                  "partial"
                ).setLabel("First Dose"),
                color: "blue",
                covidspecial: true,
              },
              {
                series: DataSeries.fromGraphQLQueryNodes(
                  "Fully Vaccinated",
                  nodes! as object[],
                  "full"
                )
                  .change()
                  .nDayAverage(14)
                  .setLabel("Fully Vaccinated - new "),
                color: "green",
                rightAxis: true,
                covidspecial: true,
                stipple: true,
              },
              {
                series: DataSeries.fromGraphQLQueryNodes(
                  "1st dose",
                  nodes! as object[],
                  "partial"
                )
                  .change()
                  .nDayAverage(14)
                  .setLabel("First Dose - new "),
                color: "blue",
                rightAxis: true,
                covidspecial: true,
                stipple: true,
              },
            ]}
            initNumberOfDays={360}
          />
        </>
      )}
    </div>
  );
};
