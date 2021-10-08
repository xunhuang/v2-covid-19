drop table if exists msa_meta;create table msa_meta as
select
    msa.msa_id,
    msa.name as msa_name,
    msa.url_name as msa_url_name,
    msa.state_fips_code,
    fips_code_state.state_name,
    fips_code_state.state_postal_abbreviation,
    pop.population
from
    msa
    left outer join fips_code_state on msa.state_fips_code = fips_code_state.state_fips_code
    left outer join (
        select
            msa_id,
            sum(pop.pop2020) as population
        from
            msa_counties
            left outer join county_population as pop on msa_counties.county_fips_code = pop.county_fips_code
        group by
            msa_id
    ) as pop on msa.msa_id = pop.msa_id