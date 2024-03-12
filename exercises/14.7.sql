USE sql_store;
-- SHOW INDEXES IN customers;

CREATE INDEX idx_state_points ON customers (state, points);
EXPLAIN SELECT customer_id 
FROM customers 
WHERE state = 'CA' AND points > 1000;

DROP INDEX idx_lastname ON customers;

