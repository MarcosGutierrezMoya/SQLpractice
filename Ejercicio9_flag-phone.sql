ALTER TABLE practicaKC.ivr_detail
ADD COLUMN info_by_phone_lg int
;

update practicaKC.ivr_detail as detail
set detail.info_by_phone_lg = ste.info_by_phone_lg
from(
  select
    ivr_id,
    max(case
      when upper(step_name) like 'CUSTOMERINFOBYPHONE.TX' and upper(step_result) = 'OK' then 1
      else 0
      end) as info_by_phone_lg
  from `practicaKC.ivr_steps`
  group by 1
) as ste
where ste.ivr_id = detail.calls_ivr_id
;