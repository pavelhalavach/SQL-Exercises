DROP TRIGGER IF EXISTS payments_after_delete;

DELIMITER $$
-- когда в таблице payments появляется новая строка,
-- в таблице invoices 
CREATE TRIGGER payments_after_delete
	AFTER DELETE ON payments
    FOR EACH ROW
BEGIN
	UPDATE invoices
    SET payment_total = payment_total - OLD.amount
    WHERE invoice_id = OLD.invoice_id;
    
END$$

DELIMITER ;

DELETE FROM payments 
WHERE payment_id = 10