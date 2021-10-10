
# set your CONN in your env
# CONN=postgres://postgres:mysecretpassword@localhost/postgres
#CONN=postgres://grqssupe:wVuhYC8zcz31f1PR36tqsuKBoK7GTJFX@kashin.db.elephantsql.com/grqssupe

init_schema_meta () {
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
echo $b

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
   psql -Atx $CONN -c "CREATE UNIQUE INDEX county_summary_view_index ON county_summary_view (county_fips_code);"
   psql -Atx $CONN -c "CREATE INDEX county_summary_view_state_index ON county_summary_view (state_fips_code);"
   psql -Atx $CONN -c "CREATE UNIQUE INDEX state_summary_view_index ON state_summary_view (state_fips_code);"
   psql -Atx $CONN -c "CREATE INDEX ON public.state_cases_all(state_fips_code);"
}

reset_db() {
   init_schema_meta
   init_data
   init_views
}

download_changes() {
   tables="\
 county_cases_all,official.county-cases-all\
 state_cases_all,official.state-cases-all\
 us_cases_all,official.us-cases-all\
 msa_cases_all,official.msa-cases-all\
 states_hospitalization,official.states-hospitalization\
 us_hospitalization,official.us-hospitalization\
 states_testing,official.states-testing\
 us_testing,official.us-testing\
 "
   for i in $tables; do 
    IFS=',' read table bigquerytable <<< "${i}"
    echo ----
    echo "downloading ${bigquerytable}"
   time ts-node ./BigQuery.ts -q "SELECT * FROM \`${bigquerytable}\` as x where x.date > date_sub(CURRENT_DATE(), INTERVAL 10 day)" > $bigquerytable.json
   done
}

update_db() {
   rm -rf changequery.sql
   tables="\
 county_cases_all,official.county-cases-all\
 state_cases_all,official.state-cases-all\
 us_cases_all,official.us-cases-all\
 msa_cases_all,official.msa-cases-all\
 states_hospitalization,official.states-hospitalization\
 us_hospitalization,official.us-hospitalization\
 states_testing,official.states-testing\
 us_testing,official.us-testing\
 "
   for i in $tables; do 
    IFS=',' read table bigquerytable <<< "${i}"
    echo ----
    echo "processing ${bigquerytable}"
   jsonfile="${bigquerytable}.json"
   echo "delete from $table where date in (" >> changequery.sql
   cat $jsonfile  | jq '[.[]  |.date .value ] |sort |unique |.[] ' |sed -e "s/\"/'/g" |paste -sd "," - >> changequery.sql
   echo ");" >> changequery.sql
   cat $jsonfile | jq -c " .[] | . + {date: .date.value, } " | json2csv  > $table.csv
   echo "\\\\copy $table from '$table.csv' with delimiter as ',' csv header quote as '\"' " >> changequery.sql
   done

cat <<EOF >> changequery.sql
 REFRESH MATERIALIZED VIEW county_summary_view;
 REFRESH MATERIALIZED VIEW state_summary_view;
 REFRESH MATERIALIZED VIEW us_summary_view;
EOF
   cat changequery.sql
   time psql -Atx $CONN < changequery.sql
}

$1