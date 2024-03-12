USE sql_store;

SELECT 
	customer_id,
    first_name,
    last_name
FROM customers
WHERE customer_id IN (
	SELECT customer_id
    FROM orders
    WHERE order_id IN (
		SELECT order_id
		FROM order_items
		WHERE product_id = 3
	)
)

SELECT 
	DISTINCT customer_id,
    first_name,
    last_name
FROM customers
JOIN orders USING (customer_id)
JOIN order_items USING (order_id)
WHERE product_id = 3

