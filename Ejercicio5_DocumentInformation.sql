update practicaKC.ivr_detail as detail
set detail.document_identification = ste.document_identification,
    detail.document_type = ste.document_type
from(
  select distinct
    ivr_id,
    max(document_identification) as document_identification,
    max(document_type) as document_type
  from `practicaKC.ivr_steps` 
  group by 1
) as ste
where ste.ivr_id = detail.calls_ivr_id
;