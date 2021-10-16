import { AdvancedCovidGraph } from '../components/AdvanceGraphCovid';
import { DataSeries } from '../components/DataSeries';
import { useMsaSubRegionQuery } from '../generated/graphql';
import { GraphContainer, GraphSingle } from '../styles/HomeStyles';

type StateSubRegionProp = {
  msaId: string;
};

export const MsaSubRegions = ({ msaId }: StateSubRegionProp) => {
  const { data, loading } = useMsaSubRegionQuery({
    variables: {
      msaId: msaId,
    },
  });
  if (loading) {
    return <div> loading</div>;
  }
  const nodes =
    data?.allMsaSummaryViews?.nodes[0]?.countySummaryViewsByMsaId.nodes;

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
              <AdvancedCovidGraph
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
