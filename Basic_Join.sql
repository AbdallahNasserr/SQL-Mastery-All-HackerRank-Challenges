-- Problem: Population Census
-- Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
SELECT SUM(city.population) 
FROM city 
JOIN country ON city.countrycode = country.code 
WHERE country.continent = 'Asia';

-- Problem: African Cities
-- Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
SELECT city.name 
FROM city 
JOIN country ON city.countrycode = country.code 
WHERE continent = 'Africa';

-- Problem: Average Population of Each Continent
-- Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.
-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
SELECT country.continent, AVG(city.population) 
FROM country 
JOIN city ON city.countrycode = country.code 
GROUP BY country.continent;
