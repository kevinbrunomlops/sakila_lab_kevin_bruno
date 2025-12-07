---
title: Welcome to my first Evidence EDA analyses
---

## Top 5 customers

Data

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
