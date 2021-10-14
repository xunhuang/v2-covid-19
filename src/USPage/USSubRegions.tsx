import styled from 'styled-components';

import { AdvancedGraph } from '../components/AdvanceGraph';
import { DataSeries } from '../components/DataSeries';
import { useUsSubRegionsQuery } from '../generated/graphql';

const GraphContainer = styled.div`
  display: flex;
  flex-wrap: wrap;
`;
const GraphSingle = styled.div`
  min-width: 350px;
  display: block;
`;

export const USSubRegions = () => {
  const { data, loading } = useUsSubRegionsQuery();

  if (loading) {
    return <div> loading</div>;
  }
  const nodes = data?.allStateSummaryViews?.nodes;

  const sorted_nodes = [...nodes!]
    .filter(
      (state) =>
        state?.stateCasesAllsByStateFipsCode.nodes &&
        state?.stateCasesAllsByStateFipsCode.nodes.length > 50
    )
    .sort((a, b) => {
      const da =
        (a?.stateCasesAllsByStateFipsCode.nodes[0]?.confirmedCases! -
          a?.stateCasesAllsByStateFipsCode.nodes[30]?.confirmedCases!) /
        a?.population!;
      const db =
        (b?.stateCasesAllsByStateFipsCode.nodes[0]?.confirmedCases! -
          b?.stateCasesAllsByStateFipsCode.nodes[30]?.confirmedCases!) /
        b?.population!;
      // console.log(`${a?.stateName} ${da} -  ${b?.stateName} ${db}`);
      return db - da;
    });
  return (
    <GraphContainer>
      {sorted_nodes?.map((state, index) => (
        <GraphSingle key={index}>
          <AdvancedGraph
            title={state?.stateName!}
            subtitle={`Avg ${Math.round(
              ((state?.stateCasesAllsByStateFipsCode.nodes[0]?.confirmedCases! -
                state?.stateCasesAllsByStateFipsCode.nodes[30]
                  ?.confirmedCases!) /
                state?.population! /
                30) *
                100000
            )}/100K/day past month`}
            serieses={[
              {
                series: DataSeries.fromGraphQLQueryNodes(
                  "Confirmed",
                  state?.stateCasesAllsByStateFipsCode.nodes! as object[],
                  "confirmedCases"
                )
                  .change()
                  .setLabel("New Cases"),
                color: "green",
                covidspecial: true,
                showMovingAverage: true,
              },
            ]}
            showControls={false}
            initNumberOfDays={180}
          />
        </GraphSingle>
      ))}
    </GraphContainer>
  );
};;
