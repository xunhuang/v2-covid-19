DROP MATERIALIZED VIEW if exists state_vaccination;CREATE MATERIALIZED VIEW state_vaccination AS
select
    state_fips_code,
    date,
    sum(partial) as partial,
    sum(county_vaccination.full) as full
from
    county_vaccination
group by
    state_fips_code,
    date;