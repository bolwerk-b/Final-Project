-- Table: public.bigmacprice

-- DROP TABLE IF EXISTS public.bigmacprice;

CREATE TABLE IF NOT EXISTS public.bigmacprice
(
    date date NOT NULL,
    currency_code character varying(5) COLLATE pg_catalog."default" NOT NULL,
    name character varying(50) COLLATE pg_catalog."default" NOT NULL,
    local_price numeric NOT NULL,
    dollar_ex numeric NOT NULL,
    dollar_price numeric NOT NULL
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.bigmacprice
    OWNER to postgres;

-- Table: public.gdpmerge

-- DROP TABLE IF EXISTS public.gdpmerge;

CREATE TABLE IF NOT EXISTS public.gdpmerge
(
    country character varying(50) COLLATE pg_catalog."default" NOT NULL,
    code character varying(5) COLLATE pg_catalog."default" NOT NULL,
    year numeric NOT NULL,
    gdp_growth numeric,
    gdp_per_capita numeric,
    gdp numeric,
    region character varying(50) COLLATE pg_catalog."default",
    sub_region character varying(100) COLLATE pg_catalog."default" NOT NULL,
    "intermediate-region-code" numeric NOT NULL,
    "sub-region-code" character varying COLLATE pg_catalog."default" NOT NULL,
    "alpha-2" character varying COLLATE pg_catalog."default" NOT NULL,
    "Code_y" character varying(100) COLLATE pg_catalog."default" NOT NULL,
    "iso_3166-2" character varying COLLATE pg_catalog."default",
    "intermediate-region" character varying COLLATE pg_catalog."default" NOT NULL,
    "region-code" numeric NOT NULL,
    country_code numeric
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.gdpmerge
    OWNER to postgres;