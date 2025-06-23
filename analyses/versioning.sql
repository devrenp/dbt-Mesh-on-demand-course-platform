with 
v1 as (select * from {{ ref('fct_orders') }}),
v2 as (select * from {{ ref('fct_orders', v=2) }})

select * from v2