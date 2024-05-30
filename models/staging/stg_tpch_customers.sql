SELECT
    c_custkey as customer_key,
    c_name as customer_name,
    c_nationkey as customer_nation_key
from {{ source('tpch', 'customer') }}
