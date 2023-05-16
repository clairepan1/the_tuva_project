select patient_id
from {{source('claims_input','eligibility')}}