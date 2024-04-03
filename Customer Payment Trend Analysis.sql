SELECT c.customerNumber, c.customerName, py.paymentDate, py.amount AS paymentAmount
FROM mintclassics.customers AS c 
LEFT JOIN mintclassics.payments AS py ON c.customerNumber = py.customerNumber
GROUP BY c.customerNumber, c.customerName, py.paymentDate, paymentAmount
ORDER BY paymentAmount DESC;