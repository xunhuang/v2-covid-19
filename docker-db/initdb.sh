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
   psql -Atx $CONN < views/msa_vaccination_view.sql 

   psql -Atx $CONN -c "CREATE INDEX ON public.county_cases_all(county_fips_code);"
   psql -Atx $CONN -c "CREATE INDEX ON public.county_cases_all(state_fips_code);"
   psql -Atx $CONN -c "CREATE UNIQUE INDEX county_summary_view_index ON county_summary_view (county_fips_code);"
   psql -Atx $CONN -c "CREATE INDEX county_summary_view_state_index ON county_summary_view (state_fips_code);"
   psql -Atx $CONN -c "CREATE UNIQUE INDEX state_summary_view_index ON state_summary_view (state_fips_code);"
   psql -Atx $CONN -c "CREATE INDEX state_testing_index ON states_testing (state_fips_code);"
   psql -Atx $CONN -c "CREATE INDEX state_vaccination_index ON state_vaccination (state_fips_code);"
   psql -Atx $CONN -c "CREATE INDEX msa_vaccination_index ON msa_vaccination (msa_id);"
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
   vacc
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


processMe() {
    table=$1 
    bigquerytable=$2
    outputfile=$3
    echo ----
    echo "processing ${bigquerytable} ${table}"
   jsonfile="${DATADIR}/${bigquerytable}.json"
   echo "delete from $table where date in (" >> ${DELTAFILE}
   cat $jsonfile  | jq '[.[]  |.date ] |sort |unique |.[] ' |sed -e "s/\"/'/g" |paste -sd "," - >> ${DELTAFILE}
   echo ");" >> ${DELTAFILE}
   cat $jsonfile | jq -c " .[] | . + {date: .date.value, } " | json2csv  > ${DATADIR}/$table.csv
   echo "\\\\copy $table from '${DATADIR}/$bigquerytable.csv' with delimiter as ',' csv header quote as '\"' " >> ${DELTAFILE}
}

update_db() {

  sane_data=$(cat $DATADIR/official.us-cases-all.json |jq '.[0].confirmed_cases > 40000000')
  if  [ $sane_data = "false" ]; then
     echo "bad data skip update"
     exit
  else 
     echo "OK data proceed with update"
  fi

   DELTAFILE="$DATADIR/changequery.sql"
   rm -rf ${DELTAFILE}
   echo "BEGIN; " > ${DELTAFILE}
   tablesOriginal="\
 county_cases_all,official.county-cases-all\
 state_cases_all,official.state-cases-all\
 us_cases_all,official.us-cases-all\
 msa_cases_all,official.msa-cases-all\
 states_hospitalization,official.states-hospitalization\
 us_hospitalization,official.us-hospitalization\
 states_testing,official.states-testing\
 us_testing,official.us-testing\
"
   tablesOriginal="\
 county_cases_all,official.county-cases-all\
 state_cases_all,official.state-cases-all\
 us_cases_all,official.us-cases-all\
 msa_cases_all,official.msa-cases-all\
"
   for i in $tablesOriginal; do 
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

   # FIXME: this is breaking. allow the rest of the pipeline update to run, and fix later
   # processMe county_vaccination newCountyVaccination ${DELTAFILE}

# errata, manually fixing data error
cat <<EOF >> ${DELTAFILE}
update us_cases_all set date = '2021-11-29', confirmed_cases = 48411494, deaths = 779293 where date = '2021-11-29';
EOF

cat <<EOF >> ${DELTAFILE}
 REFRESH MATERIALIZED VIEW county_summary_view;
 REFRESH MATERIALIZED VIEW state_summary_view;
 REFRESH MATERIALIZED VIEW us_summary_view;
 REFRESH MATERIALIZED VIEW msa_summary_view;
 REFRESH MATERIALIZED VIEW state_vaccination;
 REFRESH MATERIALIZED VIEW msa_vaccination;
EOF

   cat relationship.sql >> ${DELTAFILE}
   echo "COMMIT; " >> ${DELTAFILE}

   time psql -Atx $CONN < ${DELTAFILE}
}

update_relationship() {
   time psql -Atx $CONN < relationship.sql
}

vacc() {
  if [[ $OSTYPE == 'darwin'* ]]; then
   DATE=`gdate  --date="10 days ago" +"%Y-%m-%d"`
  else 
   DATE=`date --date="10 days ago" +"%Y-%m-%d"`
  fi

   curl  'https://data.cdc.gov/resource/8xkx-amqh.json?$where=date>"'${DATE}'T00:00:00.000"&$limit=30000'  \
   |jq '[.[] |  .date=.date[0:10] | .administered_dose1_recip = (.administered_dose1_recip | if .==null then "0" else . end) | select(.fips != "UNK") ] ' > ${DATADIR}/newCountyVaccination.json

   echo "date,county_fips_code,state_fips_code,full,partial"> ${DATADIR}/newCountyVaccination.csv 

   cat ${DATADIR}/newCountyVaccination.json \
   | jq -r -nc --stream ' fromstream(1|truncate_stream(inputs)) | {date, fips, recip_county, series_complete_yes, administered_dose1_recip} | .date + "," + .fips +","+ .fips[0:2]+","+ .series_complete_yes + "," + .administered_dose1_recip'\
   >> ${DATADIR}/newCountyVaccination.csv 
}

$1
