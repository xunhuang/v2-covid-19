# export PGPASSWORD=mysecretpassword 
# export PGHOST=localhost 
# export PGUSER=postgres 
# export PGDB=postgres 
# export DOCKER_NAME=postgres_name

b="\
 county_cases_all(date,county,state_name,state_fips_code,county_fips_code,confirmed_cases,deaths)^official.county-cases-all.csv\
 state_cases_all(date,state_name,state_fips_code,confirmed_cases,deaths)^official.state-cases-all.csv\
 us_cases_all(date,confirmed_cases,deaths)^official.us-cases-all.csv\
 msa_cases_all(msd_id,date,confirmed_cases,deaths)^official.msa-cases-all.csv\
 states_hospitalization(date,adult_icu_bed_used,\"inIcuCurrently\",\"hospitalizedCurrently\",adult_icu_beds_capacity,inpatient_beds_used,inpatient_beds_capacity,state,state_postal_abbreviation,state_name,state_gnisid,state_fips_code)^official.states-hospitalization.csv\
 us_hospitalization(date,adult_icu_bed_used,\"inIcuCurrently\",\"hospitalizedCurrently\",adult_icu_beds_capacity,inpatient_beds_used,inpatient_beds_capacity)^official.us-hospitalization.csv\
 states_testing(date,\"totalTestResults\",\"negativeIncrease\",\"positiveIncrease\",state_name,negative,\"totalTestResultsIncrease\",positive,inconclusive,\"inconclusiveIncrease\",state,state_fips_code)^official.states-testing.csv\
 us_testing(date,\"totalTestResults\",\"negativeIncrease\",\"positiveIncrease\",negative,positive,inconclusive,\"inconclusiveIncrease\")^official.us-testing.csv\
 states_summary(state_name,state_fips_code,confirmed_cases,confirmed_increase,confirmed_increase_14days,\"totalTestResults\",\"totalTestResultsIncrease\",positive,\"positiveIncrease\",\"inIcuCurrently\",\"hospitalizedCurrently\",adult_icu_beds_capacity,inpatient_beds_used,inpatient_beds_capacity)^official.states-summary.csv\
 us_summary(\"totalTestResults\",\"negativeIncrease\",\"positiveIncrease\",negative,positive,inconclusive,\"inconclusiveIncrease\",adult_icu_bed_used,\"inIcuCurrently\",\"hospitalizedCurrently\",adult_icu_beds_capacity,inpatient_beds_used,inpatient_beds_capacity,confirmed_cases,confirmed_increase,confirmed_increase_14days)^official.us-summary.csv\
 counties_summary(state_fips_code,county_fips_code,state,county,confirmed_cases,deaths,test_7day_total,positivity_7day_avg,community,school,report_date,healthwebsites)^my_dataset.covid-19-county-official-view.csv\
"

CONN=postgres://postgres:mysecretpassword@localhost/postgres
# CONN=postgres://grqssupe:wVuhYC8zcz31f1PR36tqsuKBoK7GTJFX@kashin.db.elephantsql.com/grqssupe

init_schema () {
   psql -Atx $CONN < schema.sql
   psql -Atx $CONN < dbinitdata.sql
}

init_data() {
for i in $b; do 
    IFS='^' read table file <<< "${i}"
    echo ----
    echo "${table}  " and " ${file}"
    psql -Atx $CONN -c "\copy $table from '$file' with delimiter as ',' csv header quote as '\"' "
done
}

init_views() {
   psql -Atx $CONN < views/us_summary.sql
   psql -Atx $CONN < views/states_summary_view.sql 
   psql -Atx $CONN < views/county_summary_view.sql 

   psql -Atx $CONN -c "CREATE INDEX ON public.county_cases_all(county_fips_code);"
   psql -Atx $CONN -c "CREATE INDEX ON public.county_cases_all(state_fips_code);"
}

init_schema 
init_data
init_views

# pg_dump $CONN -t fips_code_state -t fips_code_county -c -O --no-tablespaces 
#pg_dump $CONN -t us_summary_view -O --no-tablespaces 

dbbackup() {
pg_dump $CONN -c -O --no-tablespaces \
  -t fips_code_state \
  -t fips_code_county \
  -t county_population \
  -t state_population \
  -t county_geo \
  -t msa \
  -t msa_counties\
  > dbinitdata.sql
}