SELECT p.name, oi.*
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
