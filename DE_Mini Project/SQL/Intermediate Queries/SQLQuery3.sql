SELECT TOP 5 Products.ProductName, SUM([Order Details].Quantity) as 'Total Quantity'
FROM Products
INNER JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID
INNER JOIN Orders ON [Order Details].OrderID = Orders.OrderID
WHERE MONTH(Orders.OrderDate) = 1 AND YEAR(Orders.OrderDate) = 1997
GROUP BY Products.ProductName
ORDER BY SUM([Order Details].Quantity) DESC
