DROP TABLE IF EXISTS state_meta;
create table state_meta as
select
    fips.state_fips_code as state_fips_code,
    fips.state_postal_abbreviation as state_abbr,
    state_name,
    pop.pop2020 as population
from
    fips_code_state as fips
    left outer join state_population as pop on fips.state_fips_code = pop.state_fips_code;