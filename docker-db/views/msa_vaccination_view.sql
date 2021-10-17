DROP MATERIALIZED VIEW if exists msa_vaccination;CREATE MATERIALIZED VIEW msa_vaccination AS
select
    msa_id,
    date,
    sum(vacc.partial) as partial,
    sum(vacc.full) as full
from
    (
        select
            *
        from
            county_meta
        where
            msa_id is not null
    ) as county
    join county_vaccination as vacc ON vacc.county_fips_code = county.county_fips_code
group by
    msa_id,
    date;