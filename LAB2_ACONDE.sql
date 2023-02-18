# LAB 2 SQL QUERIES 2
USE sakila;

# 1. Select all the actors with the first name ‘Scarlett’.
SELECT actor_id, first_name
FROM actor
WHERE first_name = "Scarlett";
 
# 2. Select all the actors with the last name ‘Johansson’.
SELECT actor_id, last_name
FROM actor
WHERE last_name = "Johansson";

# 3. How many films (movies) are available for rent?
SELECT COUNT(film_id)
FROM film;

# 4. How many films have been rented?
SELECT count(rental_duration)
from film
WHERE rental_duration > 0;

# 5. What is the shortest and longest rental period?
SELECT max(rental_duration) AS longest_period, min(rental_duration) AS shortest_period
FROM film;

# 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT max(length) AS max_duration, min(length) AS min_duration
FROM film;

# 7. What's the average movie duration?
SELECT avg(length)
FROM film; 

# 8. What's the average movie duration expressed in format (hours, minutes)?
SELECT floor(avg(length)/60) , (floor((avg(length)/60 - floor(avg(length)/60))*60))
FROM film; 

# 9. How many movies longer than 3 hours?
SELECT COUNT(length)
FROM film
WHERE length/60 > 3;

# 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
SELECT lower(first_name) AS first_name, last_name, lower (email) AS email
FROM customer;
# couldn't change the initial letter to

# 11. What's the length of the longest film title?
SELECT film_id, title, length
FROM film
WHERE length = (SELECT max(length) FROM film); 