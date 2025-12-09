---
title: Revenue per category
---

```sql revenue_per_category
select
    category,
    total_revenue
from sakila.revenue_per_category
order by total_revenue desc
```

<BarChart 
    data={revenue_per_category}
    x=category
    y=total_revenue
    swapXY=true
    yFmt=usd0k
/>