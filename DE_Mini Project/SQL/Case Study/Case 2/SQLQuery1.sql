SELECT Shippers.CompanyName as 'ShipperName', Orders.ShipCity as 'City'
FROM Orders
INNER JOIN Shippers ON Orders.ShipVia = Shippers.ShipperID
WHERE Orders.ShipCity IS NOT NULL	
