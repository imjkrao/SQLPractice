-- Create a function to translate company name into id

-- Review the customer and order data
SELECT * FROM sales.customers;
SELECT * FROM sales.orders;

--postgresql

CREATE FUNCTION sales.fetch_id(search_name VARCHAR(100))
    RETURNS CHAR(5) 
    LANGUAGE PLPGSQL
    AS
    $$
    DECLARE id CHAR(5);
    BEGIN
        SELECT customer_id into id
        FROM sales.customers
        wHERE company = search_name;
        
        return id;
    
    END;
    $$; 

SELECT sales.fetch_id('Flavorville');
SELECT fetch_id('Blue Vine');


--DROP FUNCTION fetch_id

--SQLSERVER 2019

CREATE FUNCTION sales.fetch_id(@search_name varchar(100))
RETURNS CHAR(5)
AS
BEGIN
DECLARE @id CHAR(5)
set @id=(SELECT customer_id from sales.customers
wHERE company = @search_name);
RETURN(@id);
end;


DROP FUNCTION sales.fetch_id

SELECT sales.fetch_id('Flavorville');
SELECT fetch_id('Blue Vine');