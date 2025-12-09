select
    staff.*,
    concat(staff.first_name, ' ', staff.last_name) staff_name,
    concat(manager.first_name, ' ', manager.last_name) manager_name,
    store.store_name,
from {{ ref("stg_staffs") }} staff
left join {{ ref("stg_stores") }} store using (store_id)
left join {{ ref("stg_staffs") }} manager on manager.staff_id = staff.manager_id
