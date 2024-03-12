SELECT 
	pm.name AS payment_m,
    SUM(p.amount)
FROM payments p
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id
GROUP BY payment_m WITH ROLLUP