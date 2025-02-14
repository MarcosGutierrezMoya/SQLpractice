update practicaKC.ivr_detail as detail
set detail.customer_phone = ste.customer_phone
from(
  select
    ivr_id,
    max(customer_phone) as customer_phone
  from `practicaKC.ivr_steps`
  group by 1
) as ste
where ste.ivr_id = detail.calls_ivr_id
;