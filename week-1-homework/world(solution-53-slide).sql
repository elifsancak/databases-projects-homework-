--- Use world.sql db.

--- 1. What are the names of the countries with population greater than 8 million

select name from country where population > 8000000;

--- 2. What are the names of the countries that have “land” in their names ?

Select name from country where name like “%land%”;
       
--- 3. What are the names of the cities with population in between 500,000 and 1 million ?

select name from city where population between 500000 and 1000000;

--- 4. What are the names of all the countries on the continent ‘Europe’ ?

Select name from country where continent = “Europe”;

--- 5. List all the countries in the descending order based on their surface areas.

select name, SurfaceArea from country order by SurfaceArea desc;

--- If you have time left and want more practice you can try these optional homework exercises:

--- 1. What are the names of all the cities in the Netherlands?

???

--- 2. What's the population of Rotterdam?
 
 select district from city where district = "Rotterdam";

--- 3. What's the top 10 countries based on surface area?

select name, surfacearea from country order by surfacearea asc limit 10;

--- 4. What's the top 10 cities with the highest population?

select name, population from city order by population desc limit 10;

--- 5. What's the population of the world ?</p>
 
</body>
</html>