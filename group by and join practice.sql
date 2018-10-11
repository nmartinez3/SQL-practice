DESCRIBE film;

DESCRIBE rental;

DESCRIBE payment;

SELECT p.total;

SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id ORDER BY `SUM(amount)` DESC LIMIT 5;