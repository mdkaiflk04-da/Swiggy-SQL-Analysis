USE swiggy ;

-- 1. Which restaurant of abohar is visited by least number of people?

SELECT * FROM restaurants 
WHERE city = "Delhi"
AND rating_count = (SELECT MIN(rating_count)
FROM restaurants
WHERE city = "Delhi");

-- 2. Which restaurant has generated maximum revenue all over india?

SELECT *, cost*rating_count AS revenue
FROM restaurants
WHERE cost*rating_count = (SELECT MAX(cost*rating_count)
FROM restaurants);

-- 3. How many restaurants are having rating more than the average rating?

SELECT COUNT(*)
FROM restaurants
WHERE rating > (SELECT AVG(rating) FROM restaurants);

-- 4. Which restaurant of Delhi has generated most revenue?

SELECT *, cost*rating_count AS revenue
FROM restaurants
WHERE city = "Delhi"
AND cost*rating_count = (SELECT MAX(cost*rating_count)
FROM restaurants
WHERE city = "delhi"
);

-- 5. Which restaurant chain has maximum number of restaurants?

WITH result AS (
SELECT name , COUNT(*) AS chains
FROM restaurants
GROUP BY name)
SELECT * FROM result
WHERE chains = (SELECT MAX(chains) FROM result);

-- 6. Which restaurant chain has generated maximum revenue?

WITH max_rev AS(
SELECT name , SUM(rating_count*cost) AS revenue
FROM restaurants
GROUP BY name)
SELECT * FROM max_rev
WHERE revenue = (SELECT MAX(revenue)
FROM max_rev);


-- 7. Which city has maximum number of restaurants?

SELECT city , COUNT(*) AS num_res
FROM restaurants
GROUP BY city
ORDER BY num_res DESC
LIMIT 5;

-- 8. Which city has generated maximum revenue all over india?

WITH city_max_rev AS (
SELECT city , SUM(rating_count*cost) AS revenue
FROM restaurants
GROUP BY city )

SELECT * FROM city_max_rev
WHERE revenue = (SELECT MAX(revenue) FROM city_max_rev);

-- WHICH CITY HAS MAXIMUM FOOTFALL ALL OVER INDIA

WITH city_max_ff AS (
SELECT city , SUM(rating_count) AS footfall
FROM restaurants
GROUP BY city )

SELECT * FROM city_max_ff
WHERE footfall = (SELECT MAX(footfall) FROM city_max_ff);

-- 9. List 10 least expensive cuisines?

SELECT cuisine , cost 
FROM restaurants
ORDER BY cost ASC
LIMIT 10;


-- 10. List 10 most expensive cuisines?

SELECT cuisine , cost 
FROM restaurants
ORDER BY cost DESC
LIMIT 10;