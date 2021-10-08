DROP MATERIALIZED VIEW if exists county_summary_view;
CREATE MATERIALIZED VIEW county_summary_view AS 

SELECT
    county_meta.state_name as state_name,
	county_meta.county_name as county_name,
    county_meta.county_fips_code as county_fips_code,
    county_meta.state_fips_code as state_fips_code,
    cases.confirmed_cases as confirmed_cases,
    cases.confirmed_increase as confirmed_increase,
    cases.deaths as deaths,
    cases.deaths_increase as death_increase,
    county_meta.population as population
from
    county_meta
left outer join
    (
        SELECT
        
            today.confirmed_cases as confirmed_cases,
            today.confirmed_cases - yesterday.confirmed_cases as confirmed_increase,
            today.deaths as deaths,
            today.deaths - yesterday.deaths as deaths_increase,
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
	ON county_meta.county_fips_code = cases.county_fips_code;

comment on materialized view county_summary_view is
E'@foreignKey (county_fips_code) references fips_code_county(county_fips_code)\n@foreignKey (state_fips_code) references fips_code_state(state_fips_code)';