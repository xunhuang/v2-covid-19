import { AdvancedCovidGraph } from '../components/AdvanceGraphCovid';
import { DataSeries } from '../components/DataSeries';
import { useMsaVaccinationQuery } from '../generated/graphql';

type StateVaccinationProp = {
  msaId: string;
};

export const MsaVaccinationGraph = ({ msaId }: StateVaccinationProp) => {
  const { data, loading } = useMsaVaccinationQuery({
    variables: {
      msaId: msaId,
    },
  });
  const nodes =
    data?.allMsaSummaryViews?.nodes[0]?.msaVaccinationsByMsaId.nodes;
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
                )
                  .change()
                  .nDayAverage(14)
                  .setLabel("Fully Vaccinated "),
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
                  .setLabel("First Dose "),
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
