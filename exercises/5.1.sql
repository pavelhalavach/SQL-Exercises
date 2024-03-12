SELECT 
	MAX(invoice_total) AS highest,
    MIN(invoice_total) AS lowest,
    AVG(invoice_total) AS average,
	MAX(payment_date) AS latest,
	SUM(invoice_total*1.1) AS total,
    COUNT(DISTINCT client_id) AS number_of_clients ,
    COUNT(payment_date),
    COUNT(*) AS total_records
FROM invoices
WHERE invoice_date > '2019-07-01'