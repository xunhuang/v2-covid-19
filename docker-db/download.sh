# download tables for google's big query

tables="\
    official.state-cases-all\
    official.county-cases-all\
    official.us-cases-all\
    official.msa-cases-all\
    official.states-hospitalization 
    official.states-testing 
    official.us-hospitalization 
    official.us-testing"
# tables="official.state-cases-all"
for table in $tables
do
 echo Downloading $table
 ts-node ./BigQuery.ts -t $table \
 | jq -c " .[] | . + {date: .date.value, } " | json2csv  > $table.csv
done