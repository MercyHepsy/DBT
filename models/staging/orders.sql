-- models/staging/stg_orders.sql

select
    o_orderkey     as order_id,
    o_custkey      as customer_id,
    o_orderstatus  as order_status,
    o_totalprice   as total_price,
    o_orderdate    as order_date,
    o_orderpriority,
    o_clerk,
    o_shippriority,
    o_comment
from {{ source('tpch_source', 'orders') }}
