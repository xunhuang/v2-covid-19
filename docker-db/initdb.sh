# export PGPASSWORD=mysecretpassword 
# export PGHOST=localhost 
# export PGUSER=postgres 
# export PGDB=postgres 
# export DOCKER_NAME=postgres_name

# CONN=postgres://postgres:mysecretpassword@localhost/postgres
CONN=postgres://grqssupe:wVuhYC8zcz31f1PR36tqsuKBoK7GTJFX@kashin.db.elephantsql.com/grqssupe

init_schema_meta () {
   # CONN=postgres://postgres:mysecretpassword@localhost/tempdb
   # psql -Atx $CONN -c "drop database postgres WITH (FORCE)"
   # psql -Atx $CONN -c "create database postgres"
   # CONN=postgres://postgres:mysecretpassword@localhost/postgres
   psql -Atx $CONN < meta/init_data.sql
   psql -Atx $CONN < schema.sql
}

init_data() {
b="\
 county_cases_all(date,county,state_name,state_fips_code,county_fips_code,confirmed_cases,deaths)^official.county-cases-all.csv\
 state_cases_all(date,state_name,state_fips_code,confirmed_cases,deaths)^official.state-cases-all.csv\
 us_cases_all(date,confirmed_cases,deaths)^official.us-cases-all.csv\
 msa_cases_all(msd_id,date,confirmed_cases,deaths)^official.msa-cases-all.csv\
 states_hospitalization(date,adult_icu_bed_used,\"inIcuCurrently\",\"hospitalizedCurrently\",adult_icu_beds_capacity,inpatient_beds_used,inpatient_beds_capacity,state,state_postal_abbreviation,state_name,state_gnisid,state_fips_code)^official.states-hospitalization.csv\
 us_hospitalization(date,adult_icu_bed_used,\"inIcuCurrently\",\"hospitalizedCurrently\",adult_icu_beds_capacity,inpatient_beds_used,inpatient_beds_capacity)^official.us-hospitalization.csv\
 states_testing(date,\"totalTestResults\",\"negativeIncrease\",\"positiveIncrease\",state_name,negative,\"totalTestResultsIncrease\",positive,inconclusive,\"inconclusiveIncrease\",state,state_fips_code)^official.states-testing.csv\
 us_testing(date,\"totalTestResults\",\"negativeIncrease\",\"positiveIncrease\",negative,positive,inconclusive,\"inconclusiveIncrease\")^official.us-testing.csv\
"
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

reset_db() {
   init_schema_meta
   init_data
   init_views
}

update_db() {

}

$1