---
title: Welcome to my first Evidence EDA analysis
---

## Top 5 customers and revenue per store

### Top 5 customers


```sql top_5_customers
select 
        customer, 
        sum(amount) as total_spend
from sakila.rental_customer 
group by customer
order by total_spend desc
limit 5;
```

<BarChart
    data={top_5_customers}
    title="Top 5 customers"
    x=customer
    y=total_spend
/>

### Total revenue per store

```sql store_revenue
select
    s.store_id,
    s.total_revenue_in_usd,
    s.total_rentals,
from sakila.store_revenue s
order by total_revenue_in_usd desc
limit 5;
```

<BarChart
    data={store_revenue}
    title="Store revenue"
    x=store_id
    y=total_revenue_in_usd
    series=store_id
/>