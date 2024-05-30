select 
    customer_key, 
    min(order_date) as minimum_order_date,
    max(order_date) as maximum_order_date,
    sum(total_price) as total_price
FROM
    {{ ref('stg_tpch_orders') }}
group BY
    customer_key