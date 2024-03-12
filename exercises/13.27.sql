ALTER TABLE customers
	-- ADD IF NOT EXISTS last_name VARCHAR(50) NOT NULL AFTER first_name,
    ADD city 	  VARCHAR(50) NOT NULL,
    MODIFY COLUMN first_name VARCHAR(55) DEFAULT '',
    DROP points;
    
ALTER TABLE orders
	DROP FOREIGN KEY fk_orders_customers,
	ADD FOREIGN KEY fk_orders_customers (customer_id)
		REFERENCES customers (customer_id)
        ON UPDATE CASCADE
        ON DELETE NO ACTION;