CREATE OR REPLACE TABLE practicaKC.ivr_detail AS
SELECT cal.ivr_id AS calls_ivr_id, cal.phone_number AS calls_phone_number, cal.vdn_label AS calls_vdn_label, cal.start_date AS calls_start_date,
ROW_NUMBER() OVER (ORDER BY start_date) AS calls_start_date_id, cal.end_date AS calls_end_date, ROW_NUMBER() OVER (ORDER BY end_date) AS calls_end_date_id, cal.total_duration AS calls_total_duration,
cal.customer_segment AS calls_customer_segment, cal.ivr_language AS calls_ivr_language, cal.steps_module AS calls_steps_module, cal.module_aggregation AS calls_module_aggregation,
modu.module_sequece AS module_sequece, modu.module_name AS module_name, modu.module_duration AS module_duration, modu.module_result AS module_result, ste.step_sequence AS step_sequence,
ste.step_name AS step_name, ste.step_result AS step_result, ste.step_description_error AS step_description_error, ste.document_type AS document_type, ste.document_identification AS document_identification,
ste.customer_phone AS customer_phone, ste.billing_account_id AS billing_account_id
FROM `practicaKC.ivr_calls` cal
JOIN `practicaKC.ivr_modules` modu
ON cal.ivr_id = modu.ivr_id
JOIN `practicaKC.ivr_steps` ste
ON cal.ivr_id = ste.ivr_id;