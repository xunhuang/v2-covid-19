
CONN=postgres://postgres:mysecretpassword@localhost/tempdb

init_schema_meta () {
   psql -Atx $CONN -c "drop database tempdb;"
   psql -Atx $CONN -c "create database tempdb;"
   CONN=postgres://postgres:mysecretpassword@localhost/tempdb
   psql -Atx $CONN < metaschema.sql
   psql -Atx $CONN < data/fips_code_state.sql
   psql -Atx $CONN < data/fips_code_county.sql
   psql -Atx $CONN < data/county_population.sql
   psql -Atx $CONN < data/state_population.sql
   psql -Atx $CONN < data/county_geo.sql
   psql -Atx $CONN <  data/msa.sql
   psql -Atx $CONN <  data/msa_counties.sql
   psql -Atx $CONN <  state_meta.sql
   psql -Atx $CONN <  county_meta.sql 
   psql -Atx $CONN < msa_meta.sql 
}


dbbackupMeta() {
   CONN=postgres://postgres:mysecretpassword@localhost/tempdb
   PG_DUMPTABLE="pg_dump $CONN -c -O --no-tablespaces"
   $PG_DUMPTABLE  \
    -t state_meta \
    -t county_meta  \
    -t msa_meta \
    > init_data.sql
}

init_schema_meta
dbbackupMeta