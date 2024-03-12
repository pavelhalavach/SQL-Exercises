use sql_store;

SELECT 
	order_id,
    order_date,
    IF(YEAR(order_date) = 2019, 'ACTIVE', 'ARCHIVED') AS category
FROM orders
