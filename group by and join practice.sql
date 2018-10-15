DESCRIBE film;

DESCRIBE rental;

DESCRIBE payment;

SELECT p.total;

SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id ORDER BY `SUM(amount)` DESC LIMIT 5;

SELECT h.hello/(l.try_me + 5) FROM (SELECT FALSE = 0 AS hello) AS h, (SELECT FALSE = 1 AS try_me) AS l;

SELECT EXTRACT(YEAR FROM TIMESTAMP '2017-01-01 12:00:00');

CREATE VIEW weird_stuff AS
	SELECT o.payment_id, o.customer_id, x.total
	FROM payment o INNER JOIN
		(SELECT customer_id, SUM(amount) AS total
		FROM payment
		GROUP BY customer_id) x
	ON o.customer_id = x.customer_id;

SELECT COUNT(*) FROM weird_stuff;

CREATE VIEW weird_stuff_2 AS
	SELECT o.payment_id, o.customer_id, x.total
	FROM payment o INNER JOIN
		(SELECT customer_id, SUM(amount) AS total
		FROM payment
		GROUP BY customer_id) x;

SELECT COUNT(*) FROM weird_stuff_2;

SELECT COUNT(DISTINCT(customer_id)) FROM weird_stuff_2;

SELECT (SELECT COUNT(DISTINCT(customer_id)) FROM weird_stuff_2) * (SELECT COUNT(*) FROM weird_stuff);

SELECT IF('asdf' = 'asdf', TRUE, FALSE);