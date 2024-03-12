USE sql_store;

SELECT 
	product_id,
    name,
    (SELECT COUNT(product_id)
		FROM order_items
        WHERE product_id = p.product_id) AS orders,
	IF ((SELECT orders) > 1, 'Many times', 'Once')
FROM products p

SELECT 
	product_id,
    name,
    COUNT(*) AS orders,
	IF (COUNT(*) > 1, 'Many times', 'Once')
FROM products 
JOIN order_items USING (product_id)
GROUP BY product_id
