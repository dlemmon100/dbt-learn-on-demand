select 
    order_id,
    sum(amount) total_amount
from {{ref('stage_payments')}}
group by 1
having not(total_amount >= 0)

