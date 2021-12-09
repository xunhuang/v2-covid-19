import { useUsCasesQuery } from '../generated/graphql';
import { CasesGraph, CasesObject } from './CasesGraph';

export const UsCasesGraph = () => {
  const { data, loading } = useUsCasesQuery();
  const cases = data?.allUsCasesAlls?.nodes as Array<CasesObject>;

  return (
    <div>
      {loading && <div>loading</div>}
      {cases && <CasesGraph cases={cases} />}
    </div>
  );
};
