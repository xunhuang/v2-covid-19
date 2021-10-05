DROP MATERIALIZED VIEW if exists county_summary_view;
CREATE MATERIALIZED VIEW county_summary_view AS 
SELECT
    cases.state_name as state_name,
	cases.county_name as county_name,
    cases.county_fips_code as county_fips_code,
    cases.state_fips_code as state_fips_code,
    cases.confirmed_cases as confirmed_cases,
    cases.confirmed_increase as confirmed_increase,
    cases.deaths as deaths,
    cases.deaths_increase as death_increase,
    pop.pop2020 as population
from
    (
        SELECT
            today.county as county_name,
		            today.state_name as state_name,
            today.confirmed_cases as confirmed_cases,
            today.confirmed_cases - yesterday.confirmed_cases as confirmed_increase,
            today.deaths as deaths,
            today.deaths - yesterday.deaths as deaths_increase,
            today.state_fips_code as state_fips_code,
            today.county_fips_code as county_fips_code
        FROM
            county_cases_all as today
            JOIN county_cases_all as yesterday ON TO_DATE(yesterday.date, 'YYYY-MM-DD') = TO_DATE(today.date, 'YYYY-MM-DD') - interval '1 day'
            and today.county_fips_code = yesterday.county_fips_code
        where
            today.date = (
                select
                    max(date)
                from
                    county_cases_all
            )
    ) as cases 
        LEFT OUTER JOIN (
        select
            county_fips_code,
            pop2020
        from
            county_population
    ) as pop ON cases.county_fips_code = pop.county_fips_code;

comment on materialized view county_summary_view is
E'@foreignKey (county_fips_code) references fips_code_county(county_fips_code)\n@foreignKey (state_fips_code) references fips_code_state(state_fips_code)';