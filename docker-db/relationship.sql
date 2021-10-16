comment on materialized view state_summary_view is E'@foreignKey (state_fips_code) references state_meta(state_fips_code)';

comment on table state_cases_all  is E'@foreignKey (state_fips_code) references state_summary_view(state_fips_code)';

comment on table county_meta  is E'@foreignKey (state_fips_code) references state_summary_view(state_fips_code)';

comment on materialized view county_summary_view  is 
E'
@foreignKey (state_fips_code) references state_summary_view(state_fips_code)
 ';

comment on table states_hospitalization  is E'@foreignKey (state_fips_code) references state_summary_view(state_fips_code)';

comment on table states_testing  is E'@foreignKey (state_fips_code) references state_summary_view(state_fips_code)'; comment on table states_testing  is E'@foreignKey (state_fips_code) references state_summary_view(state_fips_code)';

comment on table county_cases_all  is E'
@foreignKey (state_fips_code) references state_summary_view(state_fips_code)
@foreignKey (county_fips_code) references county_summary_view(county_fips_code)
';

comment on table county_vaccination  is E'
@foreignKey (state_fips_code) references state_summary_view(state_fips_code)
@foreignKey (county_fips_code) references county_summary_view(county_fips_code)
';

comment on materialized view  state_vaccination  is E'
@foreignKey (state_fips_code) references state_summary_view(state_fips_code)
';

comment on materialized view  msa_vaccination  is E'
@foreignKey (msa_id) references msa_summary_view(msa_id)
';

comment on materialized view county_summary_view is E'
@foreignKey (county_fips_code) references county_meta(county_fips_code)
@foreignKey (state_fips_code) references state_meta(state_fips_code)
@foreignKey (state_fips_code) references state_summary_view(state_fips_code)
@foreignKey (msa_id) references msa_summary_view(msa_id)
@foreignKey (msa_id) references msa_meta(msa_id)
';

comment on materialized view msa_summary_view is E'
@foreignKey (msa_id) references msa_meta(msa_id)
@foreignKey (state_fips_code) references state_meta(state_fips_code)
';
    comment on materialized view state_summary_view is E'@foreignKey (state_fips_code) references state_meta(state_fips_code)';

comment on table msa_cases_all  is E'
@foreignKey (msa_id) references msa_meta(msa_id)
@foreignKey (msa_id) references msa_summary_view(msa_id)
';