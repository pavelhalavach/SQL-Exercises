DROP PROCEDURE IF EXISTS get_payments2;

DELIMITER $$
CREATE PROCEDURE get_payments2
(
	client_id INT,
    payment_method_id TINYINT
)
BEGIN    
	SELECT * FROM payments p
    WHERE p.client_id = IFNULL(client_id, p.client_id) 
		AND p.payment_method = IFNULL(payment_method_id, p.payment_method);
END$$

DELIMITER ;

CALL get_payments2(5, 2)