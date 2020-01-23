-- WORLD:

-- What is the name and the population of the most populated city in India?

select name, population from city where countrycode = 'IND' order by population desc limit 1;

-- List the names of the countries having at least 3 cities with 3 million inhabitants.

select country.name, count(country.name) from country join city on country.code=city.countrycode where city.population>3000000 group by country.name having count(country.name)>3;

-- What is the number of all the official languages? List the country name and their official languages.

select country.name, count(countrylanguage.language) from country join countrylanguage on country.code=countrylanguage.countrycode where isofficial='T' group by country.name;

-- Find which countries do not have a capital.

select name, capital from country where capital IS NULL;

-- Which country has the lowest population?

Select name, population from country order by population asc limit 1;

-- Make a list with all the languages spoken in Eastern Africa.

select region, language from country join countrylanguage on country.code=countrylanguage.countrycode where region='Eastern Africa';