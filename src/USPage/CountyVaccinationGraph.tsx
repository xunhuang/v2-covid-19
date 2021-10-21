import { AdvancedCovidGraph } from '../components/AdvanceGraphCovid';
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
    <AdvancedCovidGraph
      title=""
      serieses={[
        {
          series: DataSeries.fromGraphQLQueryNodes(
            "Fully Vaccinated",
            nodes! as object[],
            "full"
          )
            .change()
            .nDayAverage(14)
            .setLabel("Fully Vaccinated"),
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
            .setLabel("First Dose"),
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
