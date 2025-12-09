
select
    store_id,
    product_id,
    quantity,
from {{ source('production', 'stocks') }}