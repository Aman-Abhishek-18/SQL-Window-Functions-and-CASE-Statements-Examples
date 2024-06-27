select * from payment

--Quarterly Amount
SELECT 
    DATEPART(YEAR, DateofPayment) AS Sale_Year,
    DATEPART(QUARTER, DateofPayment) AS Quarter,
    SUM(Amount) AS Quarterly_Sum
FROM payment
GROUP BY DATEPART(YEAR, DateofPayment), DATEPART(QUARTER, DateofPayment)
ORDER BY Sale_Year, Quarter;

