SELECT i.inventory_id 
FROM inventory i 
WHERE i.inventory_id NOT IN (SELECT DISTINCT r.inventory_id
				FROM rental r)