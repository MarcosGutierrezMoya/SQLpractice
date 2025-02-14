ALTER TABLE practicaKC.ivr_detail
ADD COLUMN info_by_dni_lg int
;

update practicaKC.ivr_detail as detail
set detail.info_by_dni_lg = ste.info_by_dni_lg
from(
  select
    ivr_id,
    max(case
      when upper(step_name) like 'CUSTOMERINFOBYDNI.TX' and upper(step_result) = 'OK' then 1
      else 0
      end) as info_by_dni_lg
  from `practicaKC.ivr_steps`
  group by 1
) as ste
where ste.ivr_id = detail.calls_ivr_id
;