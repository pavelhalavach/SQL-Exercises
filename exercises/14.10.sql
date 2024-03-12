SHOW INDEXES IN customers;
DROP INDEX idx_state_lastname ON customers;

EXPLAIN SELECT customer_id FROM customers 
ORDER BY state, points DESC;

SHOW STATUS LIKE 'last_query_cost';