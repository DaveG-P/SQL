-- Making Data columns readable
SELECT geo_name,
	state_us_abbreviation AS "ST",
	p0010001 AS "Total Population",
	p0010003 AS "White",
	p0010004 AS "Black",
	p0010005 AS "Native",
	p0010006 AS "Asian",
	p0010007 AS "Pacific Islander",
	p0010008 AS "Other Race",
	p0010009 AS "Two or More Races"
FROM us_counties_2010;

-- Validating that data was imported correctly p.62
SELECT geo_name,
	state_us_abbreviation AS "ST",
	p0010001 AS "Total",
	p0010003 + p0010004 + p0010005 + p0010006 + p0010007 + p0010008 + p0010009 AS "All Races",
	(p0010003 + p0010004 + p0010005 + p0010006 + p0010007 + p0010008 + p0010009) - p0010001 AS "Difference"
FROM us_counties_2010
ORDER BY "Difference" DESC;

-- Percentage of county population per race
SELECT geo_name,
	state_us_abbreviation AS "ST",
	(CAST(p0010003 AS numeric(8, 1)) / p0010001 )* 100 AS "Percent White",
	(CAST(p0010004 AS numeric(8, 1)) / p0010001 )* 100 AS "Percent Black",
	(CAST(p0010005 AS numeric(8, 1)) / p0010001 )* 100 AS "Percent Native",
	(CAST (p0010006 AS numeric(8, 1)) / p0010001 )* 100 AS "Percent Asian"
FROM us_counties_2010
ORDER BY "Percent Asian" DESC;

-- Calculating both sum and Average
SELECT sum(p0010001) AS "County SUM",
	round(avg(p0010001), 0) AS "County Average"
FROM us_counties_2010;

-- Median and Average
SELECT sum(p0010001) AS "county Sum",
	round(avg(p0010001), 0) AS "County Average",
	percentile_cont(.5)
	WITHIN GROUP (ORDER BY p0010001) AS "County Median"
FROM us_counties_2010;

SELECT unnest(
	percentile_cont(array[.25, .5, .75])
	WITHIN GROUP (ORDER BY p0010001)
	) AS "Quartiles"
FROM us_counties_2010;

-- Finding the Mode
SELECT mode() WITHIN GROUP (ORDER BY p0010001)
FROM us_counties_2010;