--CREATE A VIEW TO AGGREAGRE DATA AND DISPLAY THE NUMBER OF ORDERS PLACED BY EACH COMPANY

CREATE VIEW sales.ordercount_company AS
select c.company, count(order_id) from sales.customers as c
JOIN sales.orders as o
on c.customer_id=o.customer_id
group by c.company;

CREATE VIEW sales.agrr_company_orders AS
select customer_id, SUM(order_id) as "Total # orders"
from sales.orders
GROUP BY customer_id;

ALTER VIEW sales.agrr_company_orders SET SCHEMA sales;
ALTER VIEW sales.agrr_company_orders RENAME TO agrr_cust_orders;

CREATE VIEW sales.totalsales AS
select  OL.order_id,OL.line_id,OL.sku,OL.quantity,OL.quantity*P.price as "price" 
from sales.order_lines AS OL
JOIN inventory.products as P
on OL.sku=P.sku
order by price desc;


SELECT * FROM  sales.ordercount_company
SELECT * FROM sales.agrr_company_orders;
SELECT * FROM sales.totalsales;
