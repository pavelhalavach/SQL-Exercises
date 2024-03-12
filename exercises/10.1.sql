DELIMITER $$

DROP TRIGGER IF EXISTS payments_afrer_insert;
-- когда в таблице payments появляется новая строка,
-- в таблице invoices 
CREATE TRIGGER payments_after_insert
	AFTER INSERT ON payments
    FOR EACH ROW
BEGIN
	UPDATE invoices
    SET payment_total = payment_total + NEW.amount
    WHERE invoice_id = NEW.invoice_id;
    
    INSERT INTO payments_audit
    VALUES (NEW.client_id, NEW.date, NEW.amount, 'Insert', NOW());
END$$

DELIMITER ;


