--This SQL query retrieves all columns from the tbl_Employees table and calculates three different types of ranking 
--for each employee within their respective departments based on their salary in descending order. 
--The rankings calculated are ROW_NUMBER, RANK, and DENSE_RANK.

select *,
ROW_NUMBER() over (partition by department order by salary desc) as RowNumber,
rank() over (partition by department order by salary desc) as Rank,
dense_rank() over (partition by department order by salary desc) as DenseRank
from tbl_Employees

--(refer PNG file of the same to see the table and result)




