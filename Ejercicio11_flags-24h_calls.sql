ALTER TABLE practicaKC.ivr_detail
ADD COLUMN has_call_before_24h int,
add column has_call_after_24h int
;

update practicaKC.ivr_detail as detail
set detail.has_call_before_24h = ste.has_call_before_24h, detail.has_call_after_24h = ste.has_call_after_24h
from(
  select
    ivr_id,
    case 
      when exists (
        select 
          cal2.phone_number,
        from `practicaKC.ivr_calls` cal2
        where cal1.phone_number = cal2.phone_number
          and cal1.start_date != cal2.start_date
          and cal2.start_date between cal1.start_date - interval 24 hour 
                                  and cal1.start_date
      ) then 1
      else 0
    end as has_call_before_24h,
    case 
      when exists (
        select 
          cal2.phone_number,
        from `practicaKC.ivr_calls` cal2
        where cal1.phone_number = cal2.phone_number
          and cal1.start_date != cal2.start_date
          and cal2.start_date between cal1.start_date 
                                  and cal1.start_date + interval 24 hour
      ) then 1
      else 0
    end as has_call_after_24h
  from `practicaKC.ivr_calls` cal1
  group by 1,2,3
) as ste
where ste.ivr_id = detail.calls_ivr_id
;