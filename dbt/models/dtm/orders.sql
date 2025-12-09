select
    *,
    {% if target.name == 'prod' %}-- BigQuery
    date_diff(shipped_date, order_date, day) delai_livraison,
    {% else %}-- DuckDB
    date_diff('day', shipped_date, order_date) delai_livraison,
    {% endif %}
from {{ref('stg_orders')}}