CREATE INDEX idx_points ON customers (points);
EXPLAIN 
	SELECT customer_id FROM customers
	WHERE state = 'CA'
    UNION SELECT customer_id FROM customers
    -- USE INDEX(idx_state_points)
    WHERE points > 1000;
    
EXPLAIN SELECT customer_id FROM customers
-- WHERE points + 10 > 2010; -- rows 1010
WHERE points > 2000; -- rows 3