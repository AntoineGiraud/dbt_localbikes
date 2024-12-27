select
    order_id,
    item_id,
    product_id,
    quantity,
    list_price,
    discount,
    quantity * list_price as total_catalog,
    round(quantity * list_price * discount, 3) as discount_price,
    round(quantity * list_price * (1-discount), 3) as total_discounted,
from {{ref('stg_order_items')}}