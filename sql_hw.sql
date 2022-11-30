-- WEEK 5 - Monday Questions

-- 1. How Many actors are there with the last name 'Wahlberg'?
-- 2
SELECT count(last_name)
FROM actor
WHERE last_name = 'Wahlberg'

SELECT last_name
FROM actor 
WHERE last_name  = 'Wahlberg'

-- 2. How many payments were made between $3.99 and $5.99?
-- inclusive = 5607, exclusive = 3431
SELECT count(*)
FROM payment 
WHERE amount BETWEEN 3.99 AND 5.99;

SELECT count(*)
FROM payment 
WHERE amount > 3.99 AND amount < 5.99;
-- 3. What film does the store have the most of? search in inventory
-- Ferris Mother
SELECT film_id, count(*)
FROM inventory 
GROUP BY film_id 
ORDER BY count(*) DESC 
LIMIT 1;

SELECT title
FROM film
WHERE film_id = 308;

-- check back on which store it is that has 8 copies?

-- 4. How many customers have the last name Williams?
-- 1
SELECT last_name
FROM customer
--ORDER BY last_name desc
WHERE last_name = 'Williams';

SELECT count(last_name)
FROM customer 
WHERE last_name = 'Williams'

-- 5. What store employee( get id) sold the most rentals?
-- store_id 1, Mike Hillyer
SELECT staff_id, count(*)
FROM rental 
GROUP BY staff_id 


SELECT first_name, last_name 
FROM staff 
WHERE staff_id = 1

-- 6. How many different district(distinct?) names are there?
-- 378
SELECT count(DISTINCT district)
FROM address 


-- 7. What film has the most actors in it? (use film_actor table and get film_id)
--Lambs Cincinatti
SELECT film_id, count(actor_id)
FROM film_actor 
GROUP BY film_id 
ORDER BY count(actor_id) DESC

SELECT title
FROM film 
WHERE film_id = 508

-- 8. From store_id 1, how many customers have a last name ending with 'es'? use customer table
-- 13
SELECT count(*)
FROM customer 
WHERE last_name LIKE '%es' AND store_id = 1

SELECT first_name, last_name 
FROM customer 
WHERE last_name LIKE '%es' AND store_id = 1

-- 9. How many payment amounts(4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 480? (use group by and having > 250)
-- 3
SELECT amount, count(*)
FROM payment
WHERE customer_id BETWEEN 380 AND 480
GROUP BY amount
HAVING count(*) > 250


-- 10. Within the film table, how many ratings categories are there? And what rating has the most movies total?
-- 5, PG-13
SELECT DISTINCT rating
FROM film

SELECT rating, count(*)
FROM film 
GROUP BY rating
ORDER BY count(*) desc

