select
    staff.*,
    store.store_name,
from {{ref('stg_staffs')}} staff
  left join {{ref('stg_stores')}} store using(store_id)
