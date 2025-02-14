update practicaKC.ivr_detail as detail
set detail.billing_account_id = ste.billing_account_id
from(
  select
    ivr_id,
    max(billing_account_id) as billing_account_id
  from `practicaKC.ivr_steps`
  where billing_account_id != "UNKNOWN"
  group by 1
) as ste
where ste.ivr_id = detail.calls_ivr_id
;