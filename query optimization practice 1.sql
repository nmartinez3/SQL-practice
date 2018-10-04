USE sakila;

DESCRIBE film;

SHOW KEYS FROM film;

SELECT film_id, release_year FROM film WHERE rental_rate <= 2.99 ORDER BY rating;

SELECT DISTINCT(rating) FROM film ORDER BY rating;

CREATE INDEX rating_idx ON film (rating);

SELECT COUNT(*)FROM film WHERE rating IS NULL;

SHOW KEYS FROM film;

DROP INDEX rating_idx ON film;

SELECT * FROM film LIMIT 30;