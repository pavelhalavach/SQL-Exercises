CREATE INDEX idx_lastname ON customers (last_name(20));

SELECT COUNT(DISTINCT LEFT(last_name, 5)) FROM customers;