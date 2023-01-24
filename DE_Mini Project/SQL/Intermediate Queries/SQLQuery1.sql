SELECT MONTH(OrderDate) as 'Month', COUNT(DISTINCT CustomerID) as 'Customer Count'
FROM Orders
WHERE YEAR(OrderDate) = 1997
GROUP BY MONTH(OrderDate)