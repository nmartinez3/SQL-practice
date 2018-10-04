DESCRIBE film;

DESCRIBE language;

SELECT l.name AS try_name, COUNT(DISTINCT f.film_id) AS cnt, AVG(f.rental_rate), AVG(f.length) 
FROM film f INNER JOIN language l
ON f.language_id = l.language_id
GROUP BY try_name
HAVING cnt >= 5;

CREATE VIEW test_view AS
	SELECT l.name AS try_name, COUNT(DISTINCT f.film_id) AS cnt, AVG(f.rental_rate), AVG(f.length) 
	FROM film f INNER JOIN language l
	ON f.language_id = l.language_id
	GROUP BY try_name
	HAVING cnt >= 5;
    
SELECT * FROM test_view;

INSERT INTO language (language_id, name, last_update)
	VALUES (7, 'swahili', TIMESTAMP(NOW()));

SELECT * FROM language;

INSERT INTO film (title, language_id, rental_duration, rental_rate, replacement_cost, last_update)
	VALUES ('test film title', 7, 12, 4.99, 19.88, TIMESTAMP(NOW()));
	
SELECT * FROM film ORDER BY language_id DESC;

SELECT * FROM test_view;

DROP VIEW test_view;

CREATE VIEW test_view AS
	SELECT l.name AS try_name, COUNT(DISTINCT f.film_id) AS cnt, AVG(f.rental_rate), AVG(f.length) 
	FROM film f INNER JOIN language l
	ON f.language_id = l.language_id
	GROUP BY try_name;
    
INSERT INTO film (title, language_id, rental_duration, rental_rate, replacement_cost, last_update)
	VALUES ('test film title', 7, 12, 84.99, 19.88, TIMESTAMP(NOW()));

SELECT * FROM test_view;