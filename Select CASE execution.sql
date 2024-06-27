select *,
case
	when Profit < 499 then 'Failure'
	when Profit between 499 and 999  then 'Success'
	else 'Success ++'
end as Target_Status
from Details
