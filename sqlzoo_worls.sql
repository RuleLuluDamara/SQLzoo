# Observe the result of running this SQL command to show the name, continent and population of all countries.
SELECT name, continent, population FROM world

SELECT name FROM world
WHERE population >= 200000000

SELECT name, gdp/population FROM world
WHERE population >= 200000000

SELECT name, population/1000000 FROM world
WHERE continent ='South America'

SELECT name, population FROM world
WHERE name IN ('France', 'Germany','Italy')

SELECT name FROM world
WHERE name LIKE '%United%'

SELECT name, population, area FROM world
WHERE area > 3000000 or population > 250000000

SELECT name, population, area FROM world
WHERE (area > 3000000 and population < 250000000)
OR (area < 3000000 and population > 250000000)

SELECT name, ROUND(population/1000000,2),ROUND(GDP/1000000000,2) FROM world
WHERE continent ='South America'

SELECT name, ROUND(GDP/population,-3) FROM world
WHERE gdp >= 1000000000000

SELECT name, capital FROM world
WHERE LEN(name) = LEN(capital);

SELECT name, capital
FROM world
WHERE (LEFT(name,1) = LEFT(capital,1) and
name <> capital)
# <> mean not same

SELECT name FROM world
WHERE name LIKE '%a%' AND 
name  LIKE '%e%' AND 
name  LIKE '%i%' AND 
name  LIKE '%o%' AND 
name  LIKE '%u%' AND 
name NOT LIKE '% %'
