{% docs __overview__ %}

# LocalBikes Modelisation

## Data sources :

- **Sales**
  - `customers`
  - `stores`
  - `staffs`
  - `orders`
    - `order_items`
- **Production**
  - `products`
    - `brands`
    - `categories`
  - `stocks`

![MLD](./localbikes_MLD.png)

## Schema/DB steps :

- **raw** : raw tables loaded as is from .csv
  - here trough `dbt seeds` cmd \
    activate it in `dbt_projetct.yml` for 1st load)
- **stg** : intermediate tables
- **dtm** : tables ready for analytics & reporting use

![dbt lineage](../dbt_lineage.png)

## Viz' exploration

![viz_exploration](../viz_exploration.png)

### Modèle

![viz_model](../viz_model.png)

{% enddocs %}