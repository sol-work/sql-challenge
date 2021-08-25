SHOW DATABASES;
USE  WORLD;
SHOW TABLES;
SELECT * FROM city; 
SELECT * FROM country;
SELECT * FROM city WHERE countrycode = 'USA';

SELECT countrycode, COUNT(countrycode) FROM city WHERE countrycode = 'USA';

SELECT Population, LifeExpectancy FROM country WHERE name ='Argentina';

SELECT * FROM country WHERE LifeExpectancy IS NOT NULL ORDER BY LifeExpectancy DESC LIMIT 1;

SELECT c.Name FROM city c JOIN country cr ON c.ID=cr.Capital WHERE cr.Name='SPAIN';
select * from countrylanguage;

SELECT Language FROM countrylanguage cl JOIN country cr ON cl.CountryCode=cr.Code WHERE cr.Region ='Southeast Asia';
SELECT name FROM city WHERE name LIKE 'f%' LIMIT 25;

SELECT COUNT(c.Name) AS Cities FROM city c JOIN country cr ON c.countrycode=cr.code WHERE cr.Name='CHINA';

SELECT * FROM country WHERE Population is not null and population >0 ORDER BY Population ASC LIMIT 1;

select count(name) as countries FROM country;




select name, surfacearea FROM country order by surfacearea desc limit 10;

select name, population from city where countrycode='JPN' order by population desc limit 5;



update country set headofstate = 'Elizabeth II' where (headofstate='Elisabeth II');
select name, code from country where headofstate='Elizabeth II';
