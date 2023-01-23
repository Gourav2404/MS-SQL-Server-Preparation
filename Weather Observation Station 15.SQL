-- Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than . Round your answer to  decimal places.

-- Input Format

-- The STATION table is described as follows:

-- Station.jpg

-- where LAT_N is the northern latitude and LONG_W is the western longitude.

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

SELECT cast(LONG_W as decimal(10,4)) FROM STATION 
WHERE LAT_N = (SELECT MAX(LAT_N) FROM STATION WHERE (LAT_N) < 137.2345)