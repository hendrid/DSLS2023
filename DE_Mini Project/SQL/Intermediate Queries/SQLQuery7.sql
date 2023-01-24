WITH sales_per_month AS (
    SELECT 
        MONTH(OrderDate) AS month, 
        ProductName,
        SUM(Quantity * Products.UnitPrice) AS total_sales,
        ROW_NUMBER() OVER (PARTITION BY MONTH(OrderDate) ORDER BY SUM(Quantity * Products.UnitPrice) DESC) as rank
    FROM Orders
    JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
    JOIN Products ON [Order Details].ProductID = Products.ProductID
    WHERE YEAR(OrderDate) = 1997
    GROUP BY MONTH(OrderDate), ProductName
)
SELECT 
    month,
    ProductName,
    total_sales
FROM sales_per_month
WHERE rank <= 5
ORDER BY month, total_sales DESC
