import { AdvancedGraph } from '../components/AdvanceGraph';
import { DataSeries } from '../components/DataSeries';
import { CountySummaryView, useCountyVaccinationQuery } from '../generated/graphql';

type CountyVaccinationProp = {
  county: CountySummaryView;
};

export const CountyVaccinationGraph = ({ county }: CountyVaccinationProp) => {
  const { data, loading } = useCountyVaccinationQuery({
    variables: {
      county_fips_code: county.countyFipsCode,
    },
  });

  if (loading || !data) return <div>loading</div>;

  const nodes =
    data?.allCountySummaryViews?.nodes[0]?.countyVaccinationsByCountyFipsCode
      .nodes;
  return (
    <AdvancedGraph
      title=""
      serieses={[
        {
          series: DataSeries.fromGraphQLQueryNodes(
            "Fully Vaccinated",
            nodes! as object[],
            "full"
          ).setLabel("Fully Vaccinated"),
          color: "green",
          covidspecial: true,
        },
        {
          series: DataSeries.fromGraphQLQueryNodes(
            "1st dose",
            nodes! as object[],
            "partial"
          ).setLabel("First Dose"),
          color: "blue",
          covidspecial: true,
        },
        {
          series: DataSeries.fromGraphQLQueryNodes(
            "Fully Vaccinated",
            nodes! as object[],
            "full"
          )
            .change()
            .nDayAverage(14)
            .setLabel("Fully Vaccinated - new "),
          color: "green",
          rightAxis: true,
          covidspecial: true,
          stipple: true,
        },
        {
          series: DataSeries.fromGraphQLQueryNodes(
            "1st dose",
            nodes! as object[],
            "partial"
          )
            .change()
            .nDayAverage(14)
            .setLabel("First Dose - new "),
          color: "blue",
          rightAxis: true,
          covidspecial: true,
          stipple: true,
        },
      ]}
      initNumberOfDays={360}
    />
  );
};
