import { useStatesQuery } from "./generated/graphql";

// Components are typed with props
export const QueryResultExample = () => {
  const { data, loading } = useStatesQuery();
  const nodes = data?.allFipsCodeStates?.nodes;
  return (
    <div>
      <p>Hello </p>
      {loading && <div>loading</div>}
      {nodes?.map((state) => (
        <div>
          {state?.stateName}, {state?.statePostalAbbreviation},{" "}
          {state?.fipsCodeCountiesByStateFipsCode.nodes.length} Counties
        </div>
      ))}
    </div>
  );
};
