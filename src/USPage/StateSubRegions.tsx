import { AdvancedGraph } from '../components/AdvanceGraph';
import { DataSeries } from '../components/DataSeries';
import { StateSummaryView, useStateSubRegionQuery } from '../generated/graphql';

type StateSubRegionProp = {
  state: StateSummaryView;
};

export const StateSubRegions = ({ state }: StateSubRegionProp) => {
  const { data, loading } = useStateSubRegionQuery({
    variables: {
      state_fips_code: state.stateFipsCode,
    },
  });
  const nodes =
    data?.allStateSummaryViews?.nodes[0]?.countySummaryViewsByStateFipsCode
      .nodes;
  return (
    <div>
      {loading && <div>loading</div>}
      {!loading && <div>done loading</div>}
      {nodes?.map((county) => (
        <div>
          {county?.countyCasesAllsByCountyFipsCode.nodes.length &&
            county?.countyCasesAllsByCountyFipsCode.nodes.length! > 100 && (
              <AdvancedGraph
                title={county?.countyName! + " Confirmed Cases"}
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
