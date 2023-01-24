SELECT Employees.FirstName, Employees.LastName, Employees.Title, Orders.OrderID
FROM Employees
JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
WHERE Orders.OrderID IS NOT NULL
