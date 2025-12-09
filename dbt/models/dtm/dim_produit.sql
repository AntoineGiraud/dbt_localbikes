
select
  prd.*,
  brd.brand_name,
  cat.category_name,
from {{ref('stg_products')}} prd
  left join {{ref('stg_brands')}} brd using(brand_id)
  left join {{ref('stg_categories')}} cat using(category_id)
