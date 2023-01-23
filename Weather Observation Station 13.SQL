Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than  and less than . Truncate your answer to  decimal places.

Input Format

-- The STATION table is described as follows:/

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

SELECT CAST(sum(LAT_N) AS DECIMAL(18 , 4)) FROM STATION 
WHERE LAT_N BETWEEN 38.7880 AND 137.2345