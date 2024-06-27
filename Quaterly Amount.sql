--This SQL query calculates the total sum of payment amounts for each quarter of each year from the payment table. 
--It groups the data by year and quarter, and orders the results by year and then by quarter.

--(refer PNG file of the same to see the table and result)
select * from payment

--Quarterly Amount
SELECT 
    DATEPART(YEAR, DateofPayment) AS Sale_Year,
    DATEPART(QUARTER, DateofPayment) AS Quarter,
    SUM(Amount) AS Quarterly_Sum
FROM payment
GROUP BY DATEPART(YEAR, DateofPayment), DATEPART(QUARTER, DateofPayment)
ORDER BY Sale_Year, Quarter;

