ALTER TABLE practicaKC.ivr_detail
ADD COLUMN vdn_aggregation string
;

update practicaKC.ivr_detail as detail
set detail.vdn_aggregation = cal.vdn_aggregation
from(
  select
    ivr_id,
    case 
    when lower(vdn_label) like 'absorption' then 'ABSORPTION'
    when lower(vdn_label) like 'tech%' then 'TECH'
    when lower(vdn_label) like 'atc%' then 'FRONT'
    else 'RESTO'
    end as vdn_aggregation
  from `practicaKC.ivr_calls`
) as cal
where cal.ivr_id = detail.calls_ivr_id
;