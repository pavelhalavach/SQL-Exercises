-- SHOW VARIABLES LIKE 'event%';
-- SET GLOBAL event_scheduler = OFF

DELIMITER $$

CREATE EVENT yearly_delete_stale_audit_rows
ON SCHEDULE
	-- AT '2019-05-01'
    EVERY 1 YEAR
DO BEGIN
	DELETE FROM payments_audit
    WHERE action_date < NOW() - INTERVAL 1 YEAR;
    
    -- DATESUB(NOW(), INTERVAL 1 YEAR)
END$$

DELIMITER ;

