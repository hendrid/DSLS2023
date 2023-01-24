SELECT DISTINCT CompanyName
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
INNER JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
INNER JOIN Products ON [Order Details].ProductID = Products.ProductID
WHERE MONTH(Orders.OrderDate) = 6 AND YEAR(Orders.OrderDate) = 1997 AND ProductName = 'Chai'
