CREATE PROCEDURE Invoice (@customerID nchar(5))
AS
BEGIN
    SELECT Customers.CustomerID, CompanyName as 'CustomerName', Orders.OrderID, OrderDate, RequiredDate, ShippedDate
    FROM Customers
    INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
    WHERE Customers.CustomerID = @customerID
END

EXEC Invoice 'LAUGB'
