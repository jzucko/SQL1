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