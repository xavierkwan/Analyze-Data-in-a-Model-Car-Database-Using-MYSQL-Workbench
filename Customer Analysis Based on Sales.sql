SELECT c.customerNumber, c.customerName, COUNT(o.orderNumber) as TotalSales 
FROM mintclassics.customers as c
LEFT JOIN mintclassics.orders as o ON c.customerNumber = o.customerNumber
GROUP BY c.customerName, c.customerNumber
ORDER BY COUNT(o.orderNumber) DESC; 