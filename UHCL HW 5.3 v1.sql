SELECT i.inventory_id
FROM inventory i
	LEFT JOIN rental r
    ON i.inventory_id = r.inventory_id
GROUP BY i.inventory_id
HAVING COUNT(DISTINCT r.rental_id) = 0