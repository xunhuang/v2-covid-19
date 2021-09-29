DROP TABLE IF EXISTS fips_code_state CASCADE;

CREATE TABLE fips_code_state (
     "state_fips_code" text,
     "state_postal_abbreviation" text,
    "state_name" text,
    "state_gnisid" text,
    PRIMARY KEY (state_fips_code)
);

DROP TABLE IF EXISTS fips_code_county;

CREATE TABLE fips_code_county (
    "summary_level" text,
    "summary_level_name" text,
    "state_fips_code" text,
    "county_fips_code" text,
    "county_subdivision_fips_code" text,
    "place_fips_code" text,
    "consolidated_city_fips_code" text,
    "area_name" text,
    CONSTRAINT fk_state_fips FOREIGN KEY (state_fips_code) REFERENCES fips_code_state (state_fips_code)
);