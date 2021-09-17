-- temporay tables
--POSTGRESS
create TEMPORARY TABLE infused_oils_temp AS
select *
from inventory.products
WHERE category_id=2;

-- it's stored in Tables/system folder >> pg_temp_*.fileName* 
select * from infused_oils_temp;

-- temporay tables are active only for the moments the session is connected. 
--It's removed from the system table as soon as we close the session, or drop table. Temporay tables can't be used by another user.

-- SQLSERVER2019

SELECT * INTO #infused_oils_temp
from inventory.products
where category_id=2

select * from #infused_oils_temp