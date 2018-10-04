SELECT name, COUNT(*) AS cnt
	FROM (SELECT DISTINCT a.actor_id, fa.film_id, f.title, CONCAT(a.first_name, ' ', a.last_name) AS name
			FROM film f 
				JOIN film_actor fa 
				ON f.film_id = fa.film_id 
				JOIN actor a 
				ON fa.actor_id = a.actor_id) AS tbl
	GROUP BY name
    HAVING cnt > 30
    ORDER BY cnt DESC