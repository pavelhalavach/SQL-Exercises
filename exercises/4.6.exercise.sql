CREATE TABLE invoices_archived AS
SELECT 
    i.invoice_id,
    i.number,
    c.name,
    i.invoice_total,
    i.payment_total,
    i.invoice_date,
    i.due_date,
    i.payment_date
FROM invoices i
-- JOIN clients c
	-- ON i.client_id = c.client_id
JOIN clients c
	USING (client_id)

WHERE i.payment_date IS NOT NULL