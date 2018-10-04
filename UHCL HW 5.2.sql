SELECT CONCAT(a.first_name, ' ', a.last_name) AS 'Name', f.title, f.length
FROM film f
	JOIN film_actor fa
	ON f.film_id = fa.film_id
    JOIN actor a
    ON a.actor_id = fa.actor_id
WHERE f.length < 55 AND a.last_name = 'STREEP'