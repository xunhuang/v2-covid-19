DROP MATERIALIZED VIEW if exists state_summary_view;CREATE MATERIALIZED VIEW state_summary_view AS
SELECT

    state_meta.state_name as state_name,
    state_meta.state_abbr as state_abbr,
    state_meta.state_fips_code as state_fips_code,
    cases.confirmed_cases as confirmed_cases,
    cases.confirmed_increase as confirmed_increase,
    cases.deaths as deaths,
    cases.deaths_increase as death_increase,
    "totalTestResults",
    positive,
    negative,
    "positiveIncrease",
    "negativeIncrease",
    cases.updated as last_date,
    now() as updated,

    state_meta.population as population
from
state_meta
left outer join 
    (
        SELECT
            today.confirmed_cases as confirmed_cases,
            today.confirmed_cases - yesterday.confirmed_cases as confirmed_increase,
            today.deaths as deaths,
            today.deaths - yesterday.deaths as deaths_increase,
            today.state_fips_code as state_fips_code,
            today.date as updated
        FROM
            state_cases_all as today
            LEFT OUTER JOIN state_cases_all as yesterday ON TO_DATE(yesterday.date, 'YYYY-MM-DD') = TO_DATE(today.date, 'YYYY-MM-DD') - interval '1 day'
            and today.state_fips_code = yesterday.state_fips_code
        where
            today.date = (
                select
                    max(date)
                from
                    state_cases_all
            )
    ) as cases
on state_meta.state_fips_code = cases.state_fips_code
    LEFT OUTER JOIN (
        select
            tests.state_fips_code as state_fips_code,
            "totalTestResults" as "totalTestResults",
            positive,
            negative,
            "positiveIncrease" as "positiveIncrease",
            "negativeIncrease" as "negativeIncrease"
        from
            states_testing as tests
            join (
                select
                    max(date) as date,
                    state_fips_code
                from
                    states_testing
                group by
                    state_fips_code
            ) as maxdate on tests.state_fips_code = maxdate.state_fips_code
            and tests.date = maxdate.date
    ) as testing on testing.state_fips_code = state_meta.state_fips_code;