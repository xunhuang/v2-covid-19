DROP TABLE IF EXISTS fips_code_state CASCADE;

CREATE TABLE public.fips_code_state (
    state_fips_code text NOT NULL,
    state_postal_abbreviation text,
    state_name text,
    PRIMARY KEY (state_fips_code)
);

DROP TABLE IF EXISTS fips_code_county CASCADE;

CREATE TABLE public.fips_code_county (
    source text,
    state_fips_code text,
    county_fips_code text NOT NULL,
    area_name text,
    PRIMARY KEY (county_fips_code),
    CONSTRAINT fk_state_fips FOREIGN KEY (state_fips_code) REFERENCES fips_code_state (state_fips_code)
);

DROP TABLE IF EXISTS county_population CASCADE;
CREATE TABLE county_population (
    "county_fips_code" text,
    "state_fips_code" text,
    "pop2020" INT,
    CONSTRAINT fk_county_fips FOREIGN KEY (county_fips_code) REFERENCES fips_code_county (county_fips_code),
    CONSTRAINT fk_state_fips FOREIGN KEY (state_fips_code) REFERENCES fips_code_state (state_fips_code)
);

DROP TABLE IF EXISTS state_population CASCADE;
CREATE TABLE state_population (
    "state_fips_code" text,
    "pop2020" INT,
    CONSTRAINT fk_state_fips FOREIGN KEY (state_fips_code) REFERENCES fips_code_state (state_fips_code)
);

DROP TABLE IF EXISTS public.county_geo CASCADE;
CREATE TABLE public.county_geo (
    int_point_lon double precision NOT NULL,
    int_point_lat double precision NOT NULL,
    county_fips_code text NOT NULL
    -- this table has counties that not in the fips_code_county table
    -- CONSTRAINT fk_county_fips FOREIGN KEY (county_fips_code) REFERENCES fips_code_county (county_fips_code)
);


DROP TABLE IF EXISTS public.msa CASCADE;
CREATE TABLE public.msa (
    msa_id text NOT NULL,
    url_name text,
    name text,
    state_fips_code text,
    CONSTRAINT fk_state_fips FOREIGN KEY (state_fips_code) REFERENCES fips_code_state (state_fips_code)
);

DROP TABLE IF EXISTS public.msa_counties CASCADE;
CREATE TABLE public.msa_counties (
    msa_id text,
    county_fips_code text,
    county_name text,
    state_fips_code text,
    CONSTRAINT fk_county_fips FOREIGN KEY (county_fips_code) REFERENCES fips_code_county (county_fips_code),
    CONSTRAINT fk_state_fips FOREIGN KEY (state_fips_code) REFERENCES fips_code_state (state_fips_code)
);
