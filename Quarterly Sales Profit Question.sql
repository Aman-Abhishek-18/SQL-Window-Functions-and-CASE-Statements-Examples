--The SQL script provided consists of three parts: two simple SELECT statements to retrieve all records 
--from the Orders and Details tables, and a more complex query that calculates quarterly sales and profit for the year 2018.

--(refer PNG file of the same to see the table and result)

SELECT * FROM Orders
SELECT * FROM Details
SELECT DATEPART(YEAR, o.Order_Date) as Year, DATEPART(QUARTER, o.Order_Date) AS Quarter, SUM(d.Amount) AS TotalSales,
SUM(d.Profit) as TotalProfit
FROM Orders o 
INNER JOIN Details d ON o.Order_ID = d.Order_ID
WHERE YEAR(o.Order_Date) = 2018 
GROUP BY DATEPART(QUARTER, o.Order_Date), DATEPART(YEAR, o.Order_Date) 
ORDER BY Quarter










