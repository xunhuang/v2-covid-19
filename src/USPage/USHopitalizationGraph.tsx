import { AdvancedGraph } from '../components/AdvanceGraph';
import { DataSeries } from '../components/DataSeries';
import { useUsHopitalizationQuery } from '../generated/graphql';

export const UsHospitalizationGraph = () => {
  const { data, loading } = useUsHopitalizationQuery();
  return (
    <div>
      {loading && <div>loading</div>}
      {data && (
        <>
          <AdvancedGraph
            title="US Hospitalization"
            serieses={[
              {
                series: DataSeries.fromGraphQLQueryNodes(
                  "Hospitalized",
                  data.allUsHospitalizations?.nodes! as object[],
                  "hospitalizedCurrently"
                ).change(),
                color: "blue",
                covidspecial: true,
                showMovingAverage: true,
              },
              {
                series: DataSeries.fromGraphQLQueryNodes(
                  "inICU",
                  data.allUsHospitalizations?.nodes! as object[],
                  "inIcuCurrently"
                ).change(),
                color: "red",
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
