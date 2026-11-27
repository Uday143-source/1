select 
    customer_id,
    customer_name
from customers
where customer_id in (
    select customer_id
    from sales_orders
);