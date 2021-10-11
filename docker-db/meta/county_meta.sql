drop TABLE if exists county_meta;create TABLE county_meta as
select
    county.county_fips_code as county_fips_code,
    county.state_fips_code as state_fips_code,
    geo.int_point_lon as longitude,
    geo.int_point_lat as latitude,
    pop.pop2020 as population,
    county.area_name as county_name,
    state.state_name as state_name,
    state.state_abbr as state_abbr,
    msa_counties.msa_id as msa_id,
    msa.name as msa_name,
    msa.url_name as msa_url_name
from
    fips_code_county as county
    left outer join county_geo as geo on county.county_fips_code = geo.county_fips_code
    left outer join state_meta as state on county.state_fips_code = state.state_fips_code
    left outer join msa_counties as msa_counties on msa_counties.county_fips_code = county.county_fips_code
    left outer join msa as msa on msa.msa_id = msa_counties.msa_id
    left outer join county_population as pop on county.county_fips_code = pop.county_fips_code;