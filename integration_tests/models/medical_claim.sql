select 
  claim_id
, patient_id
, claim_start_date
, claim_end_date
, admission_date
, discharge_date
, paid_date

from {{source('claims_input','medical_claim')}}