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