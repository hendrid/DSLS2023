SELECT 
    SUM(CASE WHEN (UnitPrice * Quantity) <= 100 THEN 1 ELSE 0 END) as '<= 100',
    SUM(CASE WHEN (UnitPrice * Quantity) > 100 AND (UnitPrice * Quantity) <= 250 THEN 1 ELSE 0 END) as '100 < x <= 250',
    SUM(CASE WHEN (UnitPrice * Quantity) > 250 AND (UnitPrice * Quantity) <= 500 THEN 1 ELSE 0 END) as '250 < x <= 500',
    SUM(CASE WHEN (UnitPrice * Quantity) > 500 THEN 1 ELSE 0 END) as '> 500'
FROM [Order Details]
