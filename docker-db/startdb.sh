export PGPASSWORD=mysecretpassword 
export PGHOST=localhost 
export PGUSER=postgres 
export PGDB=postgres 
export DOCKER_NAME=postgres_name

docker kill $DOCKER_NAME ; docker rm $DOCKER_NAME
docker run --name $DOCKER_NAME -p 5432:5432 -e POSTGRES_PASSWORD=$PGPASSWORD -d postgres
sleep 5
psql -h $PGHOST -U $PGUSER $PGDB < schema.sql
psql -h $PGHOST -U $PGUSER $PGDB -c "\copy fips_code_state (state_fips_code, state_postal_abbreviation, state_name, state_gnisid) from  'mydataset2.fip_codes_states.csv' with delimiter as ',' CSV quote as '\"' "
psql -h $PGHOST -U $PGUSER $PGDB -c "\copy fips_code_county (summary_level, summary_level_name, state_fips_code, county_fips_code, county_subdivision_fips_code, place_fips_code, consolidated_city_fips_code, area_name) from  'mydataset2.fips_code_county.csv' with delimiter as ',' CSV quote as '\"' "
