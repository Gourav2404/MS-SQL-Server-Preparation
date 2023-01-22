-- Query the difference between the maximum and minimum populations in CITY.

-- Input Format

-- The CITY table is described as follows:

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

select (MAX(POPULATION)-MIN(POPULATION)) AS DIFF FROM CITY