UPDATE invoices
SET payment_total = invoice_total * 0.1,
	payment_date = due_date
WHERE payment_date IS NULL

-- WHERE client_id IN
		-- (SELECT client_id
		-- FROM clients
        -- WHERE state IN('CA', 'NY'))
        
-- WHERE client_id = 
		-- (SELECT client_id
		-- FROM clients
		-- WHERE name = 'Yadel')