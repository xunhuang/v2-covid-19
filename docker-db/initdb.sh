
# set your CONN in your env

init_schema_meta () {
   psql -Atx $CONN < meta/init_data.sql
   psql -Atx $CONN < schema.sql
}

DATADIR=massive_data
mkdir -p $DATADIR

init_data() {
   b="\
 us_vaccination,us_vaccination.csv\
 county_vaccination,county_vaccination.csv\
 county_cases_all,official.county-cases-all.csv\
 state_cases_all,official.state-cases-all.csv\
 us_cases_all,official.us-cases-all.csv\
 msa_cases_all,official.msa-cases-all.csv\
 states_hospitalization,official.states-hospitalization.csv\
 us_hospitalization,official.us-hospitalization.csv\
 states_testing,official.states-testing.csv\
 us_testing,official.us-testing.csv\
 "
echo $b

for i in $b; do 
    IFS=',' ;set -- $i;
    table=$1 
    file=$2
    echo ----
    echo "${table}  " and " ${file}"
    psql -Atx $CONN -c "\copy $table from '${DATADIR}/$file' with delimiter as ',' csv header quote as '\"' "
done
}

init_views() {
   echo "XXXXXXXXXXXXXXXXXXXXXXXXXXXXX Connection String: "
   echo $CONN
   psql -Atx $CONN < views/us_summary.sql
   psql -Atx $CONN < views/states_summary_view.sql 
   psql -Atx $CONN < views/county_summary_view.sql 
   psql -Atx $CONN < views/msa_summary_view.sql 
   psql -Atx $CONN < views/state_vaccination_view.sql 

   psql -Atx $CONN -c "CREATE INDEX ON public.county_cases_all(county_fips_code);"
   psql -Atx $CONN -c "CREATE INDEX ON public.county_cases_all(state_fips_code);"
   psql -Atx $CONN -c "CREATE UNIQUE INDEX county_summary_view_index ON county_summary_view (county_fips_code);"
   psql -Atx $CONN -c "CREATE INDEX county_summary_view_state_index ON county_summary_view (state_fips_code);"
   psql -Atx $CONN -c "CREATE UNIQUE INDEX state_summary_view_index ON state_summary_view (state_fips_code);"
   psql -Atx $CONN -c "CREATE INDEX state_testing_index ON states_testing (state_fips_code);"
   psql -Atx $CONN -c "CREATE INDEX state_hospitalization_index ON states_hospitalization(state_fips_code);"
   psql -Atx $CONN -c "CREATE INDEX county_vaccination_county_index ON county_vaccination(county_fips_code);"
   psql -Atx $CONN -c "CREATE INDEX county_vaccination_state_index ON county_vaccination(state_fips_code);"
   psql -Atx $CONN -c "CREATE INDEX ON public.state_cases_all(state_fips_code);"

   update_relationship
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
    IFS=',' ;set -- $i;
    table=$1 
    bigquerytable=$2
    echo ----
    echo "downloading ${DATADIR}/${bigquerytable}"
   time ts-node ./BigQuery.ts -q "SELECT * FROM \`${bigquerytable}\` as x where x.date > date_sub(CURRENT_DATE(), INTERVAL 10 day)" > ${DATADIR}/$bigquerytable.json
   done
}

update_db() {
   DELTAFILE="$DATADIR/changequery.sql"
   rm -rf ${DELTAFILE}
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
    IFS=',' ;set -- $i;
    table=$1 
    bigquerytable=$2
    echo ----
    echo "processing ${bigquerytable} ${table}"
   jsonfile="${DATADIR}/${bigquerytable}.json"
   echo "delete from $table where date in (" >> ${DELTAFILE}
   cat $jsonfile  | jq '[.[]  |.date .value ] |sort |unique |.[] ' |sed -e "s/\"/'/g" |paste -sd "," - >> ${DELTAFILE}
   echo ");" >> ${DELTAFILE}
   cat $jsonfile | jq -c " .[] | . + {date: .date.value, } " | json2csv  > ${DATADIR}/$table.csv
   echo "\\\\copy $table from '${DATADIR}/$table.csv' with delimiter as ',' csv header quote as '\"' " >> ${DELTAFILE}
   done

cat <<EOF >> ${DELTAFILE}
 REFRESH MATERIALIZED VIEW county_summary_view;
 REFRESH MATERIALIZED VIEW state_summary_view;
 REFRESH MATERIALIZED VIEW us_summary_view;
 REFRESH MATERIALIZED VIEW msa_summary_view;
 REFRESH MATERIALIZED VIEW state_vaccination;
EOF
   cat ${DELTAFILE}
   time psql -Atx $CONN < ${DELTAFILE}
   update_relationship
}

update_relationship() {
   time psql -Atx $CONN < relationship.sql
}

$1
