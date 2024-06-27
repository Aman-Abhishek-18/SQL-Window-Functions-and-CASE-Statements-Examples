--CASE Statement: The CASE statement is used to create conditional logic within the SQL query. 
--It evaluates the Profit column and assigns a corresponding value to the Target_Status column 
--based on the specified conditions.

select *,
case
	when Profit < 499 then 'Failure'
	when Profit between 499 and 999  then 'Success'
	else 'Success ++'
end as Target_Status
from Details

--(refer PNG file of the same to see the table and result)
