select 
  patient_id
, enrollment_start_date
, enrollment_end_date
, payer
, payer_type
from {{source('claims_input','eligibility')}}