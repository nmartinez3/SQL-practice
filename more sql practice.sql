# practicing more complex queries

USE sakila;

SHOW TABLES FROM sakila;

SELECT * FROM inventory;

SELECT * FROM rental;

SELECT * FROM actor;

SELECT g.name_group, g.group_count/b.total_count
FROM 
(SELECT CASE WHEN substring(a.first_name, 1, 1) IN('A', 'B', 'C') THEN 'first three' WHEN substring(a.first_name, 1, 1) IN('X', 'Y', 'Z') THEN 'last three' ELSE 'middle' END AS name_group, COUNT(*) AS group_count
FROM rental r
	INNER JOIN inventory i 
	ON r.inventory_id = i.inventory_id
    INNER JOIN film f
    ON i.film_id = f.film_id
    INNER JOIN film_actor fa
    ON f.film_id = fa.film_id
    INNER JOIN actor a
    ON fa.actor_id = a.actor_id
GROUP BY name_group) AS g 
JOIN (SELECT COUNT(*) FROM rental) AS b;

CREATE VIEW view_1 AS SELECT CASE WHEN substring(a.first_name, 1, 1) IN('A', 'B', 'C') THEN 'first three' WHEN substring(a.first_name, 1, 1) IN('X', 'Y', 'Z') THEN 'last three' ELSE 'middle' END AS name_group, COUNT(*) AS group_count
FROM rental r
	INNER JOIN inventory i 
	ON r.inventory_id = i.inventory_id
    INNER JOIN film f
    ON i.film_id = f.film_id
    INNER JOIN film_actor fa
    ON f.film_id = fa.film_id
    INNER JOIN actor a
    ON fa.actor_id = a.actor_id
GROUP BY name_group;

SELECT * FROM view_1;

DROP VIEW rental_count;

CREATE VIEW rental_count AS SELECT COUNT(*) AS rental_cnt FROM rental;

SELECT * FROM rental_count;

SELECT v.name_group, v.group_count/r.rental_cnt FROM view_1 v, rental_count r;

SELECT * FROM rental;

SELECT COUNT(*) FROM rental r
	INNER JOIN inventory i 
	ON r.inventory_id = i.inventory_id
    INNER JOIN film f
    ON i.film_id = f.film_id
    INNER JOIN film_actor fa
    ON f.film_id = fa.film_id
    INNER JOIN actor a
    ON fa.actor_id = a.actor_id;
    
    SELECT SUM(cnt) FROM (SELECT film_id, COUNT(*) AS cnt FROM film_actor GROUP BY film_id) AS i;
    SELECT COUNT(DISTINCT film_id) FROM film_actor;
    
    SELECT 16044 * 997;
    
    SELECT * FROM film_actor ORDER BY film_id;
    
SELECT f.film_id, CASE WHEN substring(a.first_name, 1, 1) IN('A', 'B', 'C') THEN 'first three' WHEN substring(a.first_name, 1, 1) IN('X', 'Y', 'Z') THEN 'last three' ELSE 'middle' END AS name_group, COUNT(*) AS group_count
FROM rental r
	INNER JOIN inventory i 
	ON r.inventory_id = i.inventory_id
    INNER JOIN film f
    ON i.film_id = f.film_id
    INNER JOIN film_actor fa
    ON f.film_id = fa.film_id
    INNER JOIN actor a
    ON fa.actor_id = a.actor_id
GROUP BY name_group;

SELECT DISTINCT film_id FROM film_actor;