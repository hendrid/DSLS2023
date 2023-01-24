SELECT DISTINCT CompanyName
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
INNER JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
WHERE (UnitPrice * Quantity) > 500 AND YEAR(Orders.OrderDate) = 1997
