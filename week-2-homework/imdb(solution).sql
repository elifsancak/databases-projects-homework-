-- IMDB

-- Find the minimum and the maximum age of the actors per gender.

select gender, MIN(age), MAX(age) from actors group by gender;

-- Find how many actors are in their 20’s, 30’s, 40’s, 50’s etc grouped by decade).

???

-- Add a column to the films table for storing the duration (runtime) or each film.

alter table films add column DURATION TIME(3);

-- Alter the data type of column age to INT.

alter table actors MODIFY age INTEGER;

-- Print the names and biographies of the actors in this format “ANNE HATHAWAY BIO: 1 golden globe”

select upper(concat(fname," ", lname, " BIO:", " ", biography)) as biography from actors;

-- Delete the column biography from act

alter table actors DROP COLUMN age;