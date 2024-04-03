SELECT p.productCode, p.productName, p.buyPrice, sum(od.quantityOrdered) AS totalOrdered
FROM mintclassics.products AS p
LEFT JOIN mintclassics.orderdetails AS od ON p.productCode = od.productCode
GROUP BY p.productCode, p.productName, p.buyPrice
ORDER BY buyPrice DESC; 