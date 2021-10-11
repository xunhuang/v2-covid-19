import { useStatesQuery } from './generated/graphql';

// Components are typed with props
export const QueryResultExample = () => {
  const { data, loading } = useStatesQuery();
  const nodes = data?.allStateSummaryViews?.nodes;
  return (
    <div>
      <p>Hello </p>
      {loading && <div>loading</div>}
      {nodes?.map((state) => (
        <div>
          {state?.stateName}, {state?.stateAbbr},{" "}
          {state?.countySummaryViewsByStateFipsCode.nodes.length} Counties
        </div>
      ))}
    </div>
  );
};
