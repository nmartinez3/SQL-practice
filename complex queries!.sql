SELECT *
	FROM (SELECT COUNT(*) as cnt, film_id 
			FROM film_actor 
			GROUP BY film_id 
			HAVING cnt > 5 
			ORDER BY cnt desc) AS blah