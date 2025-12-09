select
    s.store_id,
    count(r.rental_id) as total_rentals,
    round(sum(p.amount)) as total_revenue_in_usd
from staging.store s
join staging.staff st  on s.store_id = st.store_id
join staging.payment p on st.staff_id = p.staff_id
join staging.rental r on p.rental_id = r.rental_id
group by s.store_id