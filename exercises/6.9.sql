USE sql_invoicing;

SELECT 
	invoice_id,
    invoice_total,
    (SELECT AVG(invoice_total)
    FROM invoices) AS invoice_avg,
    invoice_total - (SELECT invoice_avg) AS delta,
    invoice_total - (SELECT delta)
    
FROM invoices