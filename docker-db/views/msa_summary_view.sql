DROP MATERIALIZED VIEW if exists msa_summary_view;
CREATE MATERIALIZED VIEW msa_summary_view AS
select
    msa_meta.msa_id,
    msa_name,
    msa_url_name,
    population,
    state_fips_code,
    CASE WHEN cases.confirmed_cases is NULL THEN 0 ELSE cases.confirmed_cases END AS confirmed_cases,
    cases.confirmed_increase,
    cases.deaths,
    cases.deaths_increase AS death_increase,
    cases.updated as last_date,
    now() as updated
from
    msa_meta
    LEFT JOIN (
        SELECT
            today.confirmed_cases,
            today.confirmed_cases - yesterday.confirmed_cases AS confirmed_increase,
            today.deaths,
            today.deaths - yesterday.deaths AS deaths_increase,
            today.msa_id,
            today.date as updated
        FROM
            msa_cases_all today
            JOIN msa_cases_all yesterday ON to_date(yesterday.date, 'YYYY-MM-DD' :: text) = (
                to_date(today.date, 'YYYY-MM-DD' :: text) - '1 day' :: interval
            )
            AND today.msa_id = yesterday.msa_id
        WHERE
            today.date = (
                (
                    SELECT
                        max(msa_cases_all.date) AS max
                    FROM
                        msa_cases_all
                )
            )
    ) cases ON msa_meta.msa_id = cases.msa_id;