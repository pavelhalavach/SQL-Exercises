USE sql_invoicing;

SELECT 
	DISTINCT client_id,
    name,
    (SELECT SUM(invoice_total)
		FROM invoices
		WHERE client_id = c.client_id) AS total,
    (SELECT AVG(invoice_total)
		FROM invoices) AS avg,	
    (SELECT total - avg) AS delta
FROM clients c

