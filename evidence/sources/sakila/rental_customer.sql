select 
    p.amount,
    p.payment_date,
    c.customer_id,
    c.first_name || ' ' || c.last_name as customer
from staging.payment p
left join staging.rental r on p.rental_id = r.rental_id
left join staging.customer c on c.customer_id = p.customer_id

