USE sql_store;

SELECT 
	order_id,
    IFNULL(shipper_id, 'Not assigned') AS shipper,
    comments,
    COALESCE(shipper_id, comments, 'Not assigned') AS shipper2
FROM orders