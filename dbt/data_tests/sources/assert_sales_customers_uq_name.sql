{{ config(severity="warn") }}

select first_name || '_' || last_name as prenom_nom, *,
from {{ source("sales", "raw_customers") }}
qualify 1 < count(1) over (partition by first_name || '_' || last_name)
