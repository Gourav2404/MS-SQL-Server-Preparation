-- Consider  and  to be two points on a 2D plane where  are the respective minimum and maximum values of Northern Latitude (LAT_N) and  are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.

-- Query the Euclidean Distance between points  and  and format your answer to display  decimal digits.

-- Input Format

-- The STATION table is described as follows:

-- Station.jpg

-- where LAT_N is the northern latitude and LONG_W is the western longitude.

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

select CAST(SQRT(
    (POWER(max(LONG_W) - MIN(LONG_W),2) + 
    (POWER(max(LAT_N) - MIN(LAT_N),2))))
    AS DECIMAL(10,4)) 
FROM STATION
