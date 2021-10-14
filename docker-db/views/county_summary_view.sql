DROP MATERIALIZED VIEW if exists county_summary_view;
CREATE MATERIALIZED VIEW county_summary_view AS 

 SELECT county_meta.state_name,
    county_meta.county_name,
    county_meta.county_fips_code,
    county_meta.state_fips_code,
    county_meta.state_abbr,
    county_meta.longitude as longitude,
    county_meta.latitude as latitude,
    CASE WHEN cases.confirmed_cases is NULL THEN 0 ELSE cases.confirmed_cases END AS confirmed_cases,
    cases.confirmed_increase,
    cases.deaths,
    cases.deaths_increase AS death_increase,
    county_meta.population,
	cases.updated as updated
   FROM county_meta
     LEFT JOIN ( SELECT today.confirmed_cases,
            today.confirmed_cases - yesterday.confirmed_cases AS confirmed_increase,
            today.deaths,
            today.deaths - yesterday.deaths AS deaths_increase,
            today.county_fips_code,
				today.date as updated
           FROM county_cases_all today
             JOIN county_cases_all yesterday ON to_date(yesterday.date, 'YYYY-MM-DD'::text) = (to_date(today.date, 'YYYY-MM-DD'::text) - '1 day'::interval) AND today.county_fips_code = yesterday.county_fips_code
          WHERE today.date = (( SELECT max(county_cases_all.date) AS max
                   FROM county_cases_all))) cases ON county_meta.county_fips_code = cases.county_fips_code;
comment on materialized view county_summary_view is
E'@foreignKey (county_fips_code) references county_meta(county_fips_code)\n@foreignKey (state_fips_code) references state_meta(state_fips_code)';