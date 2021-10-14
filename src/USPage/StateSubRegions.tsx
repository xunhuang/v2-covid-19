import { AdvancedGraph } from '../components/AdvanceGraph';
import { DataSeries } from '../components/DataSeries';
import { StateSummaryView, useStateSubRegionQuery } from '../generated/graphql';
import { GraphContainer, GraphSingle } from '../styles/HomeStyles';

type StateSubRegionProp = {
  state: StateSummaryView;
};

export const StateSubRegions = ({ state }: StateSubRegionProp) => {
  const { data, loading } = useStateSubRegionQuery({
    variables: {
      state_fips_code: state.stateFipsCode,
    },
  });
  if (loading) {
    return <div> loading</div>;
  }
  const nodes =
    data?.allStateSummaryViews?.nodes[0]?.countySummaryViewsByStateFipsCode
      .nodes;

  const sorted_nodes = [...nodes!]
    .filter(
      (state) =>
        state?.countyCasesAllsByCountyFipsCode.nodes &&
        state?.countyCasesAllsByCountyFipsCode.nodes.length > 50
    )
    .sort((a, b) => {
      const da =
        (a?.countyCasesAllsByCountyFipsCode.nodes[0]?.confirmedCases! -
          a?.countyCasesAllsByCountyFipsCode.nodes[30]?.confirmedCases!) /
        a?.population!;
      const db =
        (b?.countyCasesAllsByCountyFipsCode.nodes[0]?.confirmedCases! -
          b?.countyCasesAllsByCountyFipsCode.nodes[30]?.confirmedCases!) /
        b?.population!;
      return db - da;
    });

  return (
    <GraphContainer>
      {sorted_nodes?.map((county) => (
        <GraphSingle>
          {county?.countyCasesAllsByCountyFipsCode.nodes.length &&
            county?.countyCasesAllsByCountyFipsCode.nodes.length! > 100 && (
              <AdvancedGraph
                title={county?.countyName!}
                subtitle={`Avg ${Math.round(
                  ((county?.countyCasesAllsByCountyFipsCode.nodes[0]
                    ?.confirmedCases! -
                    county?.countyCasesAllsByCountyFipsCode.nodes[30]
                      ?.confirmedCases!) /
                    county?.population! /
                    30) *
                    100000
                )}/100K/day past month`}
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
        </GraphSingle>
      ))}
    </GraphContainer>
  );
};
