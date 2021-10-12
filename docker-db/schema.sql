
DROP TABLE IF EXISTS state_cases_all CASCADE;

CREATE TABLE state_cases_all (
    "date" text,
    "state_name" text,
    "state_fips_code" text,
    "confirmed_cases" integer,
    "deaths" integer
    -- CONSTRAINT fk_state_fips FOREIGN KEY (state_fips_code) REFERENCES fips_code_state (state_fips_code)
);

DROP TABLE IF EXISTS county_cases_all CASCADE;

CREATE TABLE county_cases_all (
    "date" text,
    "county" text,
    "state_name" text,
    "state_fips_code" text,
    "county_fips_code" text,
    "confirmed_cases" integer,
    "deaths" integer
    -- CONSTRAINT fk_state_fips FOREIGN KEY (state_fips_code) REFERENCES fips_code_state (state_fips_code),
    -- CONSTRAINT fk_county_fips FOREIGN KEY (county_fips_code) REFERENCES fips_code_county (county_fips_code)
);

DROP TABLE IF EXISTS us_cases_all CASCADE;

CREATE TABLE us_cases_all (
    "date" text,
    "confirmed_cases" integer,
    "deaths" integer
);

DROP TABLE IF EXISTS states_hospitalization;

CREATE TABLE states_hospitalization (
    "date" text,
    "adult_icu_bed_used" integer,
    "inIcuCurrently" integer,
    "hospitalizedCurrently" integer,
    "adult_icu_beds_capacity" integer,
    "inpatient_beds_used" integer,
    "inpatient_beds_capacity" integer,
    "state" text,
    "state_postal_abbreviation" text,
    "state_name" text,
    "state_gnisid" text,
    "state_fips_code" text
    -- CONSTRAINT fk_state_fips FOREIGN KEY (state_fips_code) REFERENCES fips_code_state (state_fips_code)
);

DROP TABLE IF EXISTS us_hospitalization;

CREATE TABLE us_hospitalization (
    "date" text,
    "adult_icu_bed_used" integer,
    "inIcuCurrently" integer,
    "hospitalizedCurrently" integer,
    "adult_icu_beds_capacity" integer,
    "inpatient_beds_used" integer,
    "inpatient_beds_capacity" integer
);


DROP TABLE IF EXISTS states_testing;

CREATE TABLE states_testing (
    "date" text,
    "totalTestResults" integer,
    "negativeIncrease" integer,
    "positiveIncrease" integer,
    "state_name" text,
    "negative" integer,
    "totalTestResultsIncrease" integer,
    "positive" integer,
    "inconclusive" integer,
    "inconclusiveIncrease" integer,
    "state" text,
    "state_fips_code" text
    -- CONSTRAINT fk_state_fips FOREIGN KEY (state_fips_code) REFERENCES fips_code_state (state_fips_code)
);

DROP TABLE IF EXISTS us_testing;

CREATE TABLE us_testing (
    "date" text,
    "totalTestResults" integer,
    "negativeIncrease" integer,
    "positiveIncrease" integer,
    "negative" integer,
    "positive" integer,
    -- "totalTestResultsIncrease" integer,
    "inconclusive" integer,
    "inconclusiveIncrease" integer
);

DROP TABLE IF EXISTS msa_cases_all;

CREATE TABLE msa_cases_all (
    "msd_id" text,
    "date" text,
    "confirmed_cases" integer,
    "deaths" integer
);

DROP TABLE IF EXISTS us_vaccination;

CREATE TABLE us_vaccination (
    "date" text,
    "full" INTEGER,
    "partial" INTEGER, 
    "administered" INTEGER
);

DROP TABLE IF EXISTS county_vaccination;
CREATE TABLE county_vaccination (
    "date" text,
    "county_fips_code" text,
    "state_fips_code" text,
    "full" INTEGER,
    "partial" INTEGER
);
