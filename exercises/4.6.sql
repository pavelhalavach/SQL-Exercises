-- CREATE TABLE order_archived AS
-- SELECT * FROM orders
INSERT INTO order_archived
SELECT *
FROM orders
WHERE order_date < '2019-01-01'
