DROP MATERIALIZED VIEW if exists us_summary_view;
CREATE MATERIALIZED VIEW us_summary_view AS 

SELECT
    today.confirmed_cases,
    today.confirmed_cases - yesterday.confirmed_cases as confirmed_increase,
    today.confirmed_cases - twoweeks.confirmed_cases AS confirmed_increase_14days,
	(select sum(popuplation) from state_meta) as population
FROM
    us_cases_all as today
    JOIN us_cases_all as yesterday ON TO_DATE(yesterday.date, 'YYYY-MM-DD') = TO_DATE(today.date, 'YYYY-MM-DD') - interval '1 day'
    JOIN us_cases_all as twoweeks ON TO_DATE(twoweeks.date, 'YYYY-MM-DD') = TO_DATE(today.date, 'YYYY-MM-DD') - interval '14 day'
where
    today.date = (
        select
            max(date)
        from
            us_cases_all
    )