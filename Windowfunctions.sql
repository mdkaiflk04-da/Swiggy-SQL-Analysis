USE swiggy;
-- 1. SELECT all records from the restaurants table.

SELECT * , ROW_NUMBER()
OVER(ORDER BY cost DESC) AS row_numbers
FROM restaurants;

-- 2. Rank every restaurant from most expensive to least expensive.

SELECT * , RANK()
OVER(ORDER BY cost DESC) AS ranking
FROM restaurants;

-- 3. Rank every restaurant from most visited to least visited.

SELECT name , rating_count , RANK()
OVER(ORDER BY rating_count DESC) AS popularity
FROM restaurants;

-- 4. Rank every restaurant from most expensive to least expensive as per their city.

SELECT * , RANK()
OVER(PARTITION BY city ORDER BY cost) AS rankings
FROM restaurants;

-- 5. Dense-rank every restaurant from most expensive to least expensive as per their city.

SELECT *, DENSE_RANK()
OVER(PARTITION BY city ORDER BY cost) AS dense_rankings
FROM restaurants;

-- 6. Row-number every restaurant from most expensive to least expensive as per their city.

SELECT name , city , cost , ROW_NUMBER()
OVER(PARTITION BY city ORDER BY cost) AS row_numbering
FROM restaurants;

-- 7. Rank the restaurant based on their prices (most to least expensive)
--  as per cuisine using rank, dense_rank, and row_number.

SELECT name , cuisine , cost , RANK()
OVER(PARTITION BY cuisine ORDER BY cost DESC) AS rank_numbering
FROM restaurants;

SELECT name , cuisine , cost , DENSE_RANK()
OVER(PARTITION BY cuisine ORDER BY cost DESC) AS dense_rank_numbering
FROM restaurants;

SELECT name , cuisine , cost , ROW_NUMBER()
OVER(PARTITION BY cuisine ORDER BY cost DESC) AS row_numberings
FROM restaurants;

-- 8. Fine dine vs qsr vs fast food

SELECT name, cost ,
CASE
     WHEN cost >= 1000 THEN "FINE DINE"
     WHEN cost >= 600 THEN "QSR"
     ELSE "FAST FOOD"
END AS type_of_restaurant
FROM restaurants;

-- 9. Most popular vs popular vs least popular

SELECT name, rating_count ,
CASE
     WHEN rating_count >= 1000 THEN "MOST POPULAR"
     WHEN rating_count >= 500 THEN "POPULAR"
     ELSE "LEAST POPULAR"
END AS Popularity
FROM restaurants;