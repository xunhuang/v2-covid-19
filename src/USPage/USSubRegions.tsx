import { AdvancedGraph } from '../components/AdvanceGraph';
import { DataSeries } from '../components/DataSeries';
import { useUsSubRegionsQuery } from '../generated/graphql';

export const USSubRegions = () => {
  const { data, loading } = useUsSubRegionsQuery();
  const nodes = data?.allFipsCodeStates?.nodes;
  return (
    <div>
      {loading && <div>loading</div>}
      {nodes?.map((state) => (
        <div>
          {state?.stateName}, {state?.statePostalAbbreviation},{" "}
          {state?.stateCasesAllsByStateFipsCode.nodes &&
            state?.stateCasesAllsByStateFipsCode.nodes.length > 100 && (
              <AdvancedGraph
                title="US Confirmed Cases"
                serieses={[
                  {
                    series: DataSeries.fromGraphQLQueryNodes(
                      "Confirmed",
                      state?.stateCasesAllsByStateFipsCode.nodes! as object[],
                      "confirmedCases"
                    ).change(),
                    color: "green",
                    covidspecial: true,
                    showMovingAverage: true,
                  },
                ]}
                showControls={false}
                initNumberOfDays={180}
              />
            )}
        </div>
      ))}
    </div>
  );
};
