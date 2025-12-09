---
title: Top 5 customers by total spend
---

### Top 5 customers

```sql top_5_customers
select 
        customer, 
        sum(amount) as total_spend_in_usd
from sakila.rental_customer 
group by customer
order by total_spend_in_usd desc
limit 5;
```

<BarChart
    data={top_5_customers}
    title="Top 5 customers"
    x=customer
    y=total_spend_in_usd
/>

