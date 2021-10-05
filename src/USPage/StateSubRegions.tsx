import { AdvancedGraph } from '../components/AdvanceGraph';
import { DataSeries } from '../components/DataSeries';
import { FipsCodeState, useStateSubRegionQuery } from '../generated/graphql';

type StateSubRegionProp = {
  state: FipsCodeState;
};

export const StateSubRegions = ({ state }: StateSubRegionProp) => {
  const { data, loading } = useStateSubRegionQuery({
    variables: {
      state_fips_code: state.stateFipsCode,
    },
  });
  const nodes = data?.allFipsCodeCounties?.nodes;
  return (
    <div>
      {loading && <div>loading</div>}
      {nodes?.map((county) => (
        <div>
          {county?.countyCasesAllsByCountyFipsCode.nodes &&
            county?.countyCasesAllsByCountyFipsCode.nodes.length > 100 && (
              <AdvancedGraph
                title={county?.areaName! + " Confirmed Cases"}
                serieses={[
                  {
                    series: DataSeries.fromGraphQLQueryNodes(
                      "Confirmed",
                      county?.countyCasesAllsByCountyFipsCode
                        .nodes! as object[],
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
