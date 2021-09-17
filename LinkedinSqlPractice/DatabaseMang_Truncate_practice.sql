--Truncate
--postgres

select * from inventory.beauty_products

DELETE FROM inventory.beauty_products
WHERE sku='OGEC004'

-- delete operations acts row by row, so its slow when deleting entire data.
-- to speed up deletion of entire data from table use `truncate` opeation

TRUNCATE table inventory.beauty_products