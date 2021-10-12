# download tables for google's big query

DATADIR=./massive_data

mkdir -p ${DATADIR}

download_bq_tables() {
tables="\
    official.state-cases-all\
    official.county-cases-all\
    official.us-cases-all\
    official.msa-cases-all\
    official.states-hospitalization 
    official.states-testing 
    official.us-hospitalization 
    official.us-testing"
for table in $tables
do
 echo Downloading $table
 ts-node ./BigQuery.ts -t $table \
 | jq -c " .[] | . + {date: .date.value, } " | json2csv  > ${DATADIR}/$table.csv
done
}

download_vaccination_data() {

     curl -o ${DATADIR}/us_vaccincation.json "https://covid.cdc.gov/covid-data-tracker/COVIDData/getAjaxData?id=vaccination_trends_data"                                                          
     cat ${DATADIR}/us_vaccincation.json | jq ".vaccination_trends_data | .[] | {date: .Date, full: .Series_Complete_Cumulative, partial: .Admin_Dose_1_Cumulative, administered: .Administered_Cumulative} | select (.full!=null) " | json2csv \
        > ${DATADIR}/us_vaccination.csv

    # interesting the json is also available… 
    # Original data page is here… https://data.cdc.gov/Vaccinations/COVID-19-Vaccinations-in-the-United-States-County/8xkx-amqh 

    RAW=${DATADIR}/county_vaccination_raw.csv
    curl -o ${RAW} "https://data.cdc.gov/api/views/8xkx-amqh/rows.csv?accessType=DOWNLOAD"
    cat ${RAW} | gawk -vFPAT='([^,]*)|("[^"]+")' -vOFS=,  '{print $1","$2","$4","$7","$15}' |csvtojson > ${DATADIR}/county_vaccination.json   
    echo "date,county_fips_code,state_fips_code,full,partial"> ${DATADIR}/county_vaccination.csv
    cat ${DATADIR}/county_vaccination.json | \
    jq -r -nc --stream  \
    'fromstream(1|truncate_stream(inputs)) | select(.FIPS != "UNK") | {date:(.Date|split("/") | .[2] + "-"+.[0] + "-" + .[1]), county_fips_code:.FIPS, county_name: .Recip_County, full:(.Series_Complete_Yes|sub(",";"";"g") ), partial:(.Administered_Dose1_Recip| if .== "" then 0 else (. |tonumber) end)} | .date +","+.county_fips_code+","+.county_fips_code[0:2]+","+.full+","+(.partial|tostring)' \
    >> ${DATADIR}/county_vaccination.csv
}

download_vaccination_data
download_bq_tables