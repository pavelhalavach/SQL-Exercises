USE sql_invoicing;

CREATE VIEW clients_balance AS
SELECT 
	c.client_id,
    name,
    SUM(invoice_total - payment_total) AS balance
FROM clients c
JOIN invoices USING (client_id)
GROUP BY client_id, name
