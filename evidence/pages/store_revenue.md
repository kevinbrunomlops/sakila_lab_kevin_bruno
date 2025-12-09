---
title: Total revenue per store
---
### Total revenue per store

```sql store_revenue
select
    s.store_id,
    s.total_revenue_in_usd,
    s.total_rentals,
from sakila.store_revenue s
order by total_revenue_in_usd desc
```

<BarChart
    data={store_revenue}
    title="Store revenue"
    x=store_id
    y=total_revenue_in_usd
    series=store_id
/>