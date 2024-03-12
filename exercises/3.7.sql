SELECT
	o.order_date,
    o.order_id,
    c.first_name,    
    sh.name AS shipper

FROM customers c
-- Outer join
JOIN orders o
	ON c.customer_id = o.customer_id
-- Inner join:
LEFT JOIN shippers sh
	ON o.shipper_id = sh.shipper_id
    
ORDER BY c.customer_id