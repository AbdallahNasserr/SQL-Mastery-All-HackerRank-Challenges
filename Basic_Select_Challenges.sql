-- Problem: Revising the Select Query I
-- Query all columns for all American cities in the CITY table with populations larger than 100000.
-- The CountryCode for America is USA.
SELECT * 
FROM CITY 
WHERE POPULATION > 100000 
AND COUNTRYCODE = 'USA';

-- Problem: Revising the Select Query II
-- Query the NAME field for all American cities in the CITY table with populations larger than 120000.
-- The CountryCode for America is USA.
SELECT NAME 
FROM CITY 
WHERE POPULATION > 120000 
AND COUNTRYCODE = 'USA';

-- Problem: Select All
-- Query all columns (attributes) for every row in the CITY table.
SELECT * 
FROM CITY;

-- Problem: Select By ID
-- Query all columns for a city in CITY with the ID 1661.
SELECT * 
FROM CITY 
WHERE ID = 1661;

-- Problem: Japanese Cities' Attributes
-- Query all attributes of every Japanese city in the CITY table. 
-- The COUNTRYCODE for Japan is JPN.
SELECT * 
FROM CITY 
WHERE COUNTRYCODE = 'JPN';

-- Problem: Japanese Cities' Names
-- Query the names of all the Japanese cities in the CITY table.
-- The COUNTRYCODE for Japan is JPN.
SELECT NAME 
FROM CITY 
WHERE COUNTRYCODE = 'JPN';

-- Problem: Weather Observation Station 1
-- Query a list of CITY and STATE from the STATION table.
SELECT CITY, STATE 
FROM STATION;

-- Problem: Weather Observation Station 3
-- Query a list of CITY names from STATION for cities that have an even ID number.
-- Print the results in any order, but exclude duplicates from the answer.
SELECT DISTINCT CITY 
FROM STATION 
WHERE ID % 2 = 0;

-- Problem: Weather Observation Station 4
-- Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) 
FROM STATION;

-- Problem: Weather Observation Station 5
-- Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths.
-- If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
SELECT MIN(CITY), LEN(MIN(CITY)) 
FROM STATION 
WHERE LEN(CITY) = (SELECT MIN(LEN(CITY)) FROM STATION);

SELECT MIN(CITY), LEN(MIN(CITY)) 
FROM STATION 
WHERE LEN(CITY) = (SELECT MAX(LEN(CITY)) FROM STATION);

-- Problem: Weather Observation Station 6
-- Query the list of CITY names starting with vowels (a, e, i, o, or u) from STATION. 
-- Your result cannot contain duplicates.
SELECT DISTINCT CITY 
FROM STATION 
WHERE SUBSTRING(CITY, 1, 1) IN ('A', 'E', 'I', 'O', 'U');

-- Continue with the rest of the problems following the same style and adding comments for each solution.
