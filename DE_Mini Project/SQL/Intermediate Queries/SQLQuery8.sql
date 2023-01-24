CREATE VIEW OrderDetailsView AS
SELECT OrderID, [Order Details].ProductID, ProductName, [Order Details].UnitPrice, Quantity, Discount, ([Order Details].UnitPrice * Quantity * (1 - Discount)) as 'Price After Discount'
FROM [Order Details]
INNER JOIN Products ON [Order Details].ProductID = Products.ProductID
