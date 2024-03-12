USE sql_store;

SELECT 
	c.customer_id,
    c.state,
	SUM(oi.quantity*unit_price) AS total_price
FROM orders
JOIN customers c USING (customer_id)
JOIN order_items oi USING (order_id)
WHERE c.state = 'VA'
GROUP BY c.customer_id
HAVING total_price > 100

