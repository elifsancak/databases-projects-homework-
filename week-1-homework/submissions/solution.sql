--- Tasks
--- 1. Which car has the highest accelerate value? 

select model, accelerate from car_names join cars_data on car_names.id = cars_data.id order by accelerate desc limit 1; 

+---------+------------+
| model   | accelerate |
+---------+------------+
| peugeot |         25 |
+---------+------------+

---   2. List the weight of the cars made in the 1980s (1980 and later). 

select weight, year from cars_data where year>= 1980;

+--------+------+
| weight | year |
+--------+------+
|   2144 | 1980 |
|   1968 | 1980 |
|   2120 | 1980 |
|   2019 | 1980 |
|   2678 | 1980 |
|   2870 | 1980 |
|   3003 | 1980 |
|   3381 | 1980 |
|   2188 | 1980 |
|   2711 | 1980 |
|   2542 | 1980 |
|   2434 | 1980 |
|   2265 | 1980 |
|   2110 | 1980 |
|   2800 | 1980 |
|   2110 | 1980 |
|   2085 | 1980 |
|   2335 | 1980 |
|   2950 | 1980 |
|   3250 | 1980 |
|   1850 | 1980 |
|   1835 | 1980 |
|   2145 | 1980 |
|   1845 | 1980 |
|   2910 | 1980 |
|   2420 | 1980 |
|   2500 | 1980 |
|   2905 | 1980 |
|   2290 | 1980 |
|   2490 | 1981 |
|   2635 | 1981 |
|   2620 | 1981 |
|   2725 | 1981 |
|   2385 | 1981 |
|   1755 | 1981 |
|   1875 | 1981 |
|   1760 | 1981 |
|   2065 | 1981 |
|   1975 | 1981 |
|   2050 | 1981 |
|   1985 | 1981 |
|   2215 | 1981 |
|   2045 | 1981 |
|   2380 | 1981 |
|   2190 | 1981 |
|   2320 | 1981 |
|   2210 | 1981 |
|   2350 | 1981 |
|   2615 | 1981 |
|   2635 | 1981 |
|   3230 | 1981 |
|   2800 | 1981 |
|   3160 | 1981 |
|   2900 | 1981 |
|   2930 | 1981 |
|   3415 | 1981 |
|   3725 | 1981 |
|   3060 | 1981 |
|   3465 | 1981 |
|   2605 | 1982 |
|   2640 | 1982 |
|   2395 | 1982 |
|   2575 | 1982 |
|   2525 | 1982 |
|   2735 | 1982 |
|   2865 | 1982 |
|   3035 | 1982 |
|   1980 | 1982 |
|   2025 | 1982 |
|   1970 | 1982 |
|   2125 | 1982 |
|   2125 | 1982 |
|   2160 | 1982 |
|   2205 | 1982 |
|   2245 | 1982 |
|   1965 | 1982 |
|   1965 | 1982 |
|   1995 | 1982 |
|   2945 | 1982 |
|   3015 | 1982 |
|   2585 | 1982 |
|   2835 | 1982 |
|   2665 | 1982 |
|   2370 | 1982 |
|   2950 | 1982 |
|   2790 | 1982 |
|   2130 | 1982 |
|   2295 | 1982 |
|   2625 | 1982 |
|   2720 | 1982 |
+--------+------+

---    3. List all the cars made by chevrolet (where the model is chevrolet). 

select name, model from models JOIN car_names ON models.id=car_names.id where model='chevrolet';

+-----------+-----------+
| name      | model     |
+-----------+-----------+
| amc       | chevrolet |
| chevrolet | chevrolet |
| fiat      | chevrolet |
| mercury   | chevrolet |
| kia       | chevrolet |
+-----------+-----------+

---    4. What is the full name of the maker of the plymouth model? 

select full_name, model from car_makers JOIN car_names ON car_makers.id=car_names.id where model='plymouth';

+---------------+----------+
| full_name     | model    |
+---------------+----------+
| BMW           | plymouth |
| Nissan Motors | plymouth |
| Opel          | plymouth |
| Saab          | plymouth |
| Kia Motors    | plymouth |
+---------------+----------+

---    5. Which continent is the Volvo car maker from? 

???

---   6. How many car models are audi? 
select COUNT(model) from car_names where model='audi';

+--------------+
| COUNT(model) |
+--------------+
|            7 |
+--------------+

---    7. List all makers whose names start with s. 

select * from car_makers where maker LIKE "s%";

+----+--------+-----------+---------+
| id | maker  | full_name | country |
+----+--------+-----------+---------+
| 17 | saab   | Saab      |       6 |
| 18 | subaru | Subaru    |       4 |
+----+--------+-----------+---------+

---    8. How many cars have a horsepower more than 100 but less than 200? 

select COUNT(horsepower) from cars_data where horsepower BETWEEN 100 AND 200;

+-------------------+
| COUNT(horsepower) |
+-------------------+
|               164 |
+-------------------+

---    9. List all car makers from australia. 

select maker, name from car_makers JOIN countries ON car_makers.id=countries.id where name='australia';

+-------+-----------+
| maker | name      |
+-------+-----------+
| honda | australia |
+-------+-----------+

---    10. List all car makers not from sweden, japan, france or germany. 

select maker, name from car_makers JOIN countries ON car_makers.id=countries.id where name NOT IN ('sweden', 'japan', 'france', 'germany');

+--------------+-------------+
| maker        | name        |
+--------------+-------------+
| amc          | usa         |
| ford         | italy       |
| citroen      | uk          |
| nissan       | korea       |
| fiat         | russia      |
| hi           | nigeria     |
| honda        | australia   |
| mazda        | new zealand |
| daimler benz | egypt       |