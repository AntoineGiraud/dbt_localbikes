{% docs __overview__ %}

# LocalBikes Modelisation

## Data sources

**Origin**
- [Kaggle > Bike store sample database](https://www.kaggle.com/datasets/dillonmyrick/bike-store-sample-database/data)
- [SQL Server Sample Database](https://www.sqlservertutorial.net/getting-started/sql-server-sample-database/)

**Sales** : `customers`, `stores`, `staffs`, `orders`, `order_items`

**Production** : `products`, `brands`, `categories`, `stocks`

![MLD](https://github.com/AntoineGiraud/dbt_localbikes/raw/main/localbikes_MLD.png)

## Schema/DB steps

- **raw** : raw tables loaded as is from .csv
  - here trough `dbt seeds` cmd \
    activate it in `dbt_projetct.yml` for 1st load)
- **stg** : intermediate tables
- **dtm** : tables ready for analytics & reporting use

![dbt lineage](https://github.com/AntoineGiraud/dbt_localbikes/raw/main/dbt_lineage.png)

## Viz' exploration

![viz_exploration](https://github.com/AntoineGiraud/dbt_localbikes/raw/main/viz_exploration.png)

### Modèle

![viz_model](https://github.com/AntoineGiraud/dbt_localbikes/raw/main/viz_model.png)

{% enddocs %}