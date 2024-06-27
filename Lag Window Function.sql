
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
