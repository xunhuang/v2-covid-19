import { useUsCasesQuery } from '../generated/graphql';
import { CasesObject } from './CasesGraph';
import { DailyGraph } from './CountyDailyGraph';

export const UsDailyGraph = () => {
  const { data, loading } = useUsCasesQuery();
  return (
    <div>
      {loading && <div>loading</div>}
      {data && (
        <DailyGraph
          cases={data.allUsCasesAlls?.nodes! as Array<CasesObject>}
        ></DailyGraph>
      )}
    </div>
  );
};
