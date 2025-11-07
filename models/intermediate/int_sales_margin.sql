select
    *
    , purchase_price * quantity as purchase_cost
    , revenue - (purchase_price * quantity) as margin
from {{ref('stg_raw__sales')}}
join{{ref('stg_raw__products')}}
    using(products_id)