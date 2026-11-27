select 
    c.customer_id,
    c.customer_name
from customers c
where exists (
    select 1
    from sales_orders so
    where so.customer_id = c.customer_id
);