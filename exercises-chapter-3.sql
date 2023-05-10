USE sakila

-- EX 3-1
SELECT actor_id, first_name, last_name
FROM actor
ORDER BY first_name, last_name;

-- EX 3-2
SELECT actor_id, first_name, last_name 
FROM actor
WHERE last_name in ('WILLIAMS', 'DAVIS');

--  EX 3-3
SELECT customer_id
FROM rental as r
WHERE date(r.rental_date) = '2005-07-05';

-- EX 3-4
SELECT c.email, r.return_date
FROM customer c 
INNER JOIN rental as r  
ON c.customer_id = r.customer_id 
WHERE date(r.rental_date) = '2005-06-14'
ORDER BY return_date DESC;