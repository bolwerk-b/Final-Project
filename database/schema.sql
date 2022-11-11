CREATE TABLE bigmacprice
(
	date date NOT NULL,
	currency_code VARCHAR(5) NOT NULL,
	name VARCHAR(50) NOT NULL,
	local_price numeric NOT NULL,
	dollar_ex NUMERIC NOT NULL,
	dollar_price numeric NOT NULL
	
);

SELECT * FROM public.bigmacprice

CREATE TABLE gdpmerge (	
	Country VARCHAR(50) NOT NULL,
	Code VARCHAR(5) NOT NULL,
	year NUMERIC NOT NULL,
	gdp_growth NUMERIC NOT NULL,
	GDP_Per_Capita numeric NOT NULL,
	GDP NUMERIC NOT NULL,
	country_code NUMERIC NOT NULL,
	region VARCHAR(50) NOT NULL,
	sub_region VARCHAR(100) NOT NULL
);