UPDATE products
SET properties = '
{
	"dimensions": [1,2,3],
    "weight": 10,
    "manufacturer": {"name":"sony"}
}
'
-- SET properties = JSON_OBJECT(
-- 'weight' , 10,
-- 'dimentions', JSON_ARRAY(1,2,3),
-- 'manufacturer', JSON_OBJECT('name','sony'))
WHERE product_id = 1;
UPDATE products
SET properties = JSON_SET(
	properties,
    '$.weight', 20,
    '$.age', 90
)
WHERE product_id = 1;
    