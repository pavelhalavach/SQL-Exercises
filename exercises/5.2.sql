SELECT
	client_id,
	SUM(invoice_total) AS total_sales
FROM invoices i

WHERE invoice_date >= '2019-07-01'
GROUP BY client_id 
ORDER BY total_sales DESC