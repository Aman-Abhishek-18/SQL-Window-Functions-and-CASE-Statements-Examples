select top 5 updated_date, 
	DATEPART(YEAR, updated_date) as year,
	DATEPART(MONTH, updated_date) as month,
	DATEPART(DAY, updated_date) as day,
	DATEPART(HOUR, updated_date) as hour, 
	DATENAME(MONTH,updated_date) as month_name, 
	FORMAT(updated_date, 'MM') as mm_format,
	FORMAT(updated_date, 'MMM') as mmm_format,
	FORMAT(updated_date, 'ddd') as formatted_day_name,
	FORMAT(updated_date, 'dddd') as formatted_day_name, 
	FORMAT(updated_date, 'yyyy/MM/dd') as formatted_date,
	CAST(updated_date as date) as date_format,
	CAST(DATEADD(YEAR, -3, Updated_Date) as date) as Years_BackDate,
	DATEADD(DAY, -1, GETDATE()) as Yesterday_timestamp,
	DATEADD(DAY, -1, CAST(GETDATE()as date)) as Yesterday_date,
	DATEDIFF(Day, Updated_Date, GETDATE()) AS DaysSinceUpdated
from tbl_Employees