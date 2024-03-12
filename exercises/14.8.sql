EXPLAIN SELECT customer_id 
FROM customers 
-- USE INDEX(idx_lastname_state)
USE INDEX(idx_state_lastname)
-- WHERE state = 'NY' AND last_name LIKE 'A%';
-- WHERE state LIKE 'A%' AND last_name LIKE 'A%';
WHERE last_name LIKE 'A%';

SELECT
	COUNT(DISTINCT state),
    COUNT(DISTINCT last_name)
FROM customers

CREATE INDEX idx_lastname_state ON customers (last_name, state);
CREATE INDEX idx_state_lastname ON customers (state, last_name);

DROP INDEX idx_lastname_state ON customers;