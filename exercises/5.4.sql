SELECT
	c.state,
    c.city,
	SUM(invoice_total) AS total_sales,
    COUNT(*) AS number_of_invoices
FROM invoices 
JOIN clients c USING (client_id)
GROUP BY c.state, c.city WITH ROLLUP

