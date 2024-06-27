SELECT * FROM Orders
SELECT * FROM Details
SELECT DATEPART(YEAR, o.Order_Date) as Year, DATEPART(QUARTER, o.Order_Date) AS Quarter, SUM(d.Amount) AS TotalSales,
SUM(d.Profit) as TotalProfit
FROM Orders o INNER JOIN Details d ON o.Order_ID = d.Order_ID
WHERE YEAR(o.Order_Date) = 2018 GROUP BY DATEPART(QUARTER, o.Order_Date), DATEPART(YEAR, o.Order_Date) ORDER BY Quarter










