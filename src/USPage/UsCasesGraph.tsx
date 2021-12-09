import { useUsCasesQuery } from '../generated/graphql';
import { CasesGraph, CasesObject } from './CasesGraph';

export const UsCasesGraph = () => {
  const { data, loading } = useUsCasesQuery();
  const cases = data?.allUsCasesAlls?.nodes as Array<CasesObject>;
  let fixed = cases?.filter((entry) => entry.date !== "2021-11-29");
  fixed.push({
    date: "2021-11-29",
    confirmedCases: 48411494,
    deaths: 779293,
  });

  return (
    <div>
      {loading && <div>loading</div>}
      {cases && <CasesGraph cases={fixed} />}
    </div>
  );
};
