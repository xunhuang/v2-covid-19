import { AdvancedGraph } from '../components/AdvanceGraph';
import { DataSeries } from '../components/DataSeries';
import { CountySummaryView, useCountyCompareToParentsQuery } from '../generated/graphql';

type CountyDailyProp = {
  county: CountySummaryView;
};

export const CountyCompareGraph = ({ county }: CountyDailyProp) => {
  const { data, loading } = useCountyCompareToParentsQuery({
    variables: {
      county_fips_code: county.countyFipsCode,
    },
  });

  if (loading || !data) return <div>loading</div>;

  const cases = data?.county.cases?.nodes as object[];
  const statecases = data?.state.allFipsCodeCounties?.nodes[0]
    ?.fipsCodeStateByStateFipsCode?.stateCasesAllsByStateFipsCode
    .nodes as object[];
  const statePop =
    data?.state.allFipsCodeCounties?.nodes[0]?.fipsCodeStateByStateFipsCode
      ?.statePopulationsByStateFipsCode.nodes[0]?.pop2020;
  const uscases = data?.us.cases?.nodes as object[];
  const uspop = data?.us.poplation?.nodes.reduce((a, b) => a + b?.pop2020!, 0);

  return (
    <div>
      <AdvancedGraph
        title={"New Cases/100K (7-day average)"}
        serieses={[
          {
            series: DataSeries.fromGraphQLQueryNodes(
              "Positives",
              cases,
              "confirmedCases"
            )
              .change()
              .nDayAverage(7)
              .divideByNumber(county.population! / 100000)
              .setLabel(county.countyName!),
            color: "red",
          },
          {
            series: DataSeries.fromGraphQLQueryNodes(
              "State Positives",
              statecases,
              "confirmedCases"
            )
              .change()
              .nDayAverage(7)
              .divideByNumber(statePop! / 100000)
              .setLabel(county.stateName!),
            color: "green",
          },
          {
            series: DataSeries.fromGraphQLQueryNodes(
              "State Positives",
              uscases,
              "confirmedCases"
            )
              .change()
              .nDayAverage(7)
              .divideByNumber(uspop! / 100000)
              .setLabel("US"),
            color: "blue",
          },
        ]}
        initNumberOfDays={360}
      />
      <AdvancedGraph
        title={"Deaths/100K (2-week average)"}
        serieses={[
          {
            series: DataSeries.fromGraphQLQueryNodes(
              "Positives",
              cases,
              "deaths"
            )
              .change()
              .nDayAverage(14)
              .divideByNumber(county.population! / 100000)
              .setLabel(county.countyName!),
            color: "red",
          },
          {
            series: DataSeries.fromGraphQLQueryNodes(
              "State Positives",
              statecases,
              "deaths"
            )
              .change()
              .nDayAverage(14)
              .divideByNumber(statePop! / 100000)
              .setLabel(county.stateName!),
            color: "green",
          },
          {
            series: DataSeries.fromGraphQLQueryNodes(
              "State Positives",
              uscases,
              "deaths"
            )
              .change()
              .nDayAverage(14)
              .divideByNumber(uspop! / 100000)
              .setLabel("US"),
            color: "blue",
          },
        ]}
        initNumberOfDays={360}
      />
    </div>
  );
};
