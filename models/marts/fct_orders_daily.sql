select 
    order_date,
    count(1) as total_orders,
    count(distinct customer_key) as total_customers,
    sum(total_price) as total_price
from
    {{ref('stg_tpch_orders')}}
group by order_date