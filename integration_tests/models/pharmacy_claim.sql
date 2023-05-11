select
  claim_id
, patient_id
, dispensing_date
, paid_date
from {{source('claims_input','pharmacy_claim')}}