USE sakila;
DESCRIBE film;
SELECT * FROM film;
SELECT title, rating FROM film;
SELECT DISTINCT rating FROM film ORDER BY rating;

SELECT title, rating, length 
FROM film
WHERE rating = 'R' OR length < 75;

SELECT title, rating, length 
FROM film
WHERE rating = 'R' AND length < 75;

SELECT title, rating, length 
FROM film
WHERE rating IN ('R', 'NC-17');

SELECT title, rating, length 
FROM film
WHERE rating IN ('R', 'NC-17')
ORDER BY length DESC;

SELECT title, rating, length 
FROM film
WHERE rating IN ('R', 'NC-17')
ORDER BY length DESC
LIMIT 10;

SELECT title, rating, length 
FROM film
WHERE rating LIKE 'P%';

SELECT first_name, last_name FROM actor;

SELECT upper (concat first_name, ' ', last_name) AS actor_name FROM actor;

SELECT actor_id, first_name, last_name FROM actor WHERE first_name LIKE 'Joe';

SELECT first_name, last_name FROM actor WHERE last_name LIKE '%gen%';

SELECT first_name, last_name FROM actor WHERE last_name LIKE '%LI%' ORDER BY last_name, first_name;

SELECT country_id, country FROM country WHERE country IN ('Afghanistan', 'Bangladesh', 'China');


ALTER TABLE actor ADD COLUMN middle_name varchar(30) AFTER first_name;
SELECT * FROM actor;

ALTER TABLE actor MODIFY COLUMN middle_name blob;
SELECT * FROM actor;

ALTER TABLE actor DROP COLUMN middle_name;
SELECT * FROM actor;


SELECT last_name AS 'Last name', COUNT(last_name) AS 'Last name count'
FROM actor
GROUP BY last_name;

SELECT last_name AS 'Last name', COUNT(last_name) AS 'Last name count'
FROM actor
GROUP BY last_name
HAVING COUNT(last_name) > 1;

SELECT first_name, last_name
FROM actor
WHERE first_name = 'Groucho' AND last_name = 'Williams';

UPDATE actor
SET first_name = 'HARPO'
WHERE first_name = 'Groucho' AND last_name = 'Williams';

SELECT *
FROM actor
WHERE last_name = 'Williams';









