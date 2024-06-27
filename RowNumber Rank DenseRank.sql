select *,
ROW_NUMBER() over (partition by department order by salary desc) as RowNumber,
rank() over (partition by department order by salary desc) as Rank,
dense_rank() over (partition by department order by salary desc) as DenseRank
from tbl_Employees




