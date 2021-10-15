import { AdvancedCovidGraph } from '../components/AdvanceGraphCovid';
import { DataSeries } from '../components/DataSeries';
import { useUsVaccinationQuery } from '../generated/graphql';

export const UsVaccinationGraph = () => {
  const { data, loading } = useUsVaccinationQuery();
  return (
    <div>
      {loading && <div>loading</div>}
      {data && (
        <>
          <AdvancedCovidGraph
            title="US Vaccination"
            serieses={[
              {
                series: DataSeries.fromGraphQLQueryNodes(
                  "Fully Vaccinated",
                  data.allUsVaccinations?.nodes! as object[],
                  "full"
                ).setLabel("Fully Vaccinated"),
                color: "green",
                covidspecial: true,
              },
              {
                series: DataSeries.fromGraphQLQueryNodes(
                  "1st dose",
                  data.allUsVaccinations?.nodes! as object[],
                  "partial"
                ).setLabel("First Dose"),
                color: "blue",
                covidspecial: true,
              },
              {
                series: DataSeries.fromGraphQLQueryNodes(
                  "Fully Vaccinated",
                  data.allUsVaccinations?.nodes! as object[],
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
                  data.allUsVaccinations?.nodes! as object[],
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
