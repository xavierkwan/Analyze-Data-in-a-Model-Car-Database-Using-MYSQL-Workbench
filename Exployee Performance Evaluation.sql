SELECT e.employeeNumber, e.lastName, e.firstName, e.jobTitle, SUM(od.priceEach * od.quantityOrdered) AS TotalSales
FROM mintclassics.employees AS e 
LEFT JOIN mintclassics.customers AS c ON e.employeenumber = c.salesRepEmployeeNumber
LEFT JOIN mintclassics.orders AS o ON c.customerNumber = o.customerNumber
LEFT JOIN mintclassics.orderdetails AS od ON o.orderNumber= od.orderNumber
GROUP BY e.employeeNumber, e.lastName, e.firstName, e.jobTitle
ORDER BY TotalSales DESC; 