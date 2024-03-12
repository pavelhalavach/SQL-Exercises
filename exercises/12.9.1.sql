SELECT 
	product_id, 
    JSON_EXTRACT(properties, '$.weight'),
    properties -> '$.weight',
    properties -> '$.dimentions[0]',
    properties -> '$.manufacturer.name',
    properties ->> '$.manufacturer.name',
    properties -> '$.age'
FROM sql_store.products
WHERE product_id = 1;