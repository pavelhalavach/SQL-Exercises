SELECT *
FROM clients
WHERE client_id IN (
	SELECT DISTINCT client_id
    FROM invoices
)

SELECT *
FROM clients c
WHERE EXISTS (
	SELECT client_id
    FROM invoices
    WHERE client_id = c.client_id
)