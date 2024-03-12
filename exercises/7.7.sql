SELECT
	order_id,
    CASE
		WHEN YEAR(order_date) = 2019 THEN 'ACTIVE'
        WHEN YEAR(order_date) = 2018 THEN 'last year'
        WHEN YEAR(order_date) < 2018 THEN 'Archived'
        ELSE 'FUTURE'
	END AS category
FROM orders