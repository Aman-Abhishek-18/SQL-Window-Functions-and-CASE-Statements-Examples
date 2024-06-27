--The LAG window function in SQL is used to access data from a previous row within the same result set without the 
--need for a self-join. This function is useful for performing operations that require comparisons between rows, 
--such as calculating the difference between values in consecutive rows.


SELECT 
DATEPART(MONTH, DateofPayment) as month, sum(Amount) as monthly_sale,
lead(sum(Amount),1) over (order by DATEPART(MONTH, DateofPayment)) as next_month_sale,
lead(sum(Amount),1) over (order by DATEPART(MONTH, DateofPayment)) - sum(Amount) as difference,
case 
	when lead(sum(Amount),1) over (order by DATEPART(MONTH, DateofPayment)) > sum(Amount) 
	then 1 
	else 0
end as flag
FROM payment group by DATEPART(MONTH, DateofPayment) order by DATEPART(MONTH, DateofPayment)

--(refer PNG file of the same to see the table and result)
