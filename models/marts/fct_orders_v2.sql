with orders as (
    select * from {{ ref('int_orders') }}
),

final as (
    select 
        order_id,
        location_id,
        customer_id,
        order_total as order_amount,
        tax_paid,
        ordered_at,
        customer_name,
        location_name,
        tax_rate,
        date_part(month, ordered_at) as ordered_month,
        date_part(day, ordered_at) as ordered_day, 
        date_part(year, ordered_at) as ordered_year,
        cast(location_opened_at as date) as location_opened_at
    from orders
)

select * 
from final