--- bonus - cars.sql
--- select model, make from car_names where make LIKE 'a%%r';

+-------+-------------+
| model | make        |
+-------+-------------+
| amc   | amc matador |
| amc   | amc matador |
| amc   | amc matador |
| amc   | amc matador |
| amc   | amc pacer   |
| amc   | amc matador |
+-------+-------------+

--- select model, weight, cylinders, year from car_names JOIN cars_data ON car_names.id=cars_data.id where year NOT IN (1970, 1975, 1981) AND (weight between 3000 and 4000 AND 6>cylinders);

+---------------+--------+-----------+------+
| model         | weight | cylinders | year |
+---------------+--------+-----------+------+
| volvo         |   3150 |         4 | 1976 |
| peugeot       |   3270 |         4 | 1976 |
| mercedes      |   3530 |         5 | 1979 |
| peugeot       |   3190 |         4 | 1979 |
| amc           |   3003 |         4 | 1980 |
| mercedes-benz |   3250 |         4 | 1980 |
| amc           |   3035 |         4 | 1982 |
+---------------+--------+-----------+------+

