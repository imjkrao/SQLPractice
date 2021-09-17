-- creating subset of data/ duplicate table
--postgres

CREATE table inventory.beauty_products AS
SELECT * from inventory.products
where category_id=3

select * from inventory.beauty_products;

-- sqlserver 2019
select * into inventory.beauty_products
from inventory.products
WHERE category_id=3;

select * from inventory.beauty_products; 
