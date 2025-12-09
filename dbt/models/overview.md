{% docs __overview__ %}

# LocalBikes Modelisation

## Data sources

**Origin**
- [Kaggle > Bike store sample database](https://www.kaggle.com/datasets/dillonmyrick/bike-store-sample-database/data)
- [SQL Server Sample Database](https://www.sqlservertutorial.net/getting-started/sql-server-sample-database/)

**Sales** : `customers`, `stores`, `staffs`, `orders`, `order_items`

**Production** : `products`, `brands`, `categories`, `stocks`

## Schema/DB steps

- **raw** : raw tables loaded as is from .csv
- **stg** : intermediate tables
- **dtm** : tables ready for analytics & reporting use

## Viz' exploration

![viz_exploration](https://github.com/AntoineGiraud/dbt_localbikes/raw/main/images/viz_exploration.png)
![viz_model](https://github.com/AntoineGiraud/dbt_localbikes/raw/main/images/viz_model.png)

## Explore column lineage with Colibri 🐦

[Accéder à dbt-colibri](./colibri/index.html)

![data flow](https://github.com/AntoineGiraud/dbt_localbikes/blob/main/images/dbt_colibri_column_lineage.png?raw=true)

{% enddocs %}
