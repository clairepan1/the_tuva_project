

select 
  'medical claims without enrollment' as test_description
, count(distinct claim_id)
from {{ ref('input_layer__medical_claim') }}  a
left join {{ ref('input_layer__eligibility') }}  b
    on a.patient_id = b.patient_id
where b.patient_id is null

union

select 
  'rx claims without enrollment' as test_description
, count(distinct claim_id)
from {{ ref('input_layer__pharmacy_claim') }}  a
left join {{ ref('input_layer__eligibility') }}  b
    on a.patient_id = b.patient_id
where b.patient_id is null