SELECT
	o.order_date,
    o.order_id,
    c.first_name,    
    sh.name AS shipper,
	os.name AS status
FROM customers c
-- Outer join
JOIN orders o
	ON c.customer_id = o.customer_id
-- Inner join:
LEFT JOIN shippers sh
	ON o.shipper_id = sh.shipper_id
JOIN order_statuses os
	ON o.status = os.order_status_id
ORDER BY status