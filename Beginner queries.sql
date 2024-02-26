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
/*When you use DROP COLUMN, you are permanently removing the specified column from the table's structure. This means that all data in that 
column will be deleted, and the column itself will no longer exist in the table.
On the other hand, DELETE is used to remove rows from a table based on a condition, but it does not remove the structure of the column itself.*/

--https://lyniguez.github.io/SQL-Example-Work/ 4a









