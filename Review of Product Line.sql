SELECT pl.productLine, pl.textDescription AS productlineDescription, SUM(p.quantityInStock) AS TotalStock, 
SUM(od.quantityOrdered) AS TotalQty, SUM(od.quantityOrdered * od.priceEach) as TotalSales, 
(SUM(od.quantityOrdered) / SUM(p.quantityInStock)) * 100 AS salesToInventoryPercentage
FROM mintclassics.productlines AS pl 
LEFT JOIN mintclassics.products AS p ON pl.productLine = p.productLine
LEFT JOIN mintclassics.orderdetails AS od ON p.productCode = od.productCode
GROUP BY pl.productLine, pl.textDescription
ORDER BY salesToInventoryPercentage DESC;