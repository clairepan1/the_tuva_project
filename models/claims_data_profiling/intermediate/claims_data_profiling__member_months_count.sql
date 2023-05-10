

select 
  year_month
, count(1) as member_months
from {{ ref('claims_data_profiling__member_months') }}
group by 1
order by 1