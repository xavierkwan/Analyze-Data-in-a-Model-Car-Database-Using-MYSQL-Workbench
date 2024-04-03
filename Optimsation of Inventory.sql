SELECT productCode, productName, quantityInStock, totalOrdered,  (quantityInStock - totalOrdered) AS InventoryBalance 
FROM ( 
		SELECT p.productCode, p.productName, p.quantityInStock, SUM(od.quantityOrdered) AS totalOrdered
		FROM mintclassics.products AS p
		LEFT JOIN mintclassics.orderdetails AS od ON p.productCode = od.productCode
		GROUP BY p.productCode, p.productName, p.quantityInStock
	)AS InventoryData
WHERE (quantityInStock - totalOrdered) > 0
Order by InventoryBalance DESC;