ALTER TABLE practicaKC.ivr_detail
ADD COLUMN masiva_lg int
;

update practicaKC.ivr_detail as detail
set detail.masiva_lg = cal.masiva_lg
from(
  select
    ivr_id,
    case
      when lower(module_aggregation) like '%averia_masiva%' then 1
      else 0
      end as masiva_lg
  from `practicaKC.ivr_calls`
  group by 1,2
) as cal
where cal.ivr_id = detail.calls_ivr_id
;