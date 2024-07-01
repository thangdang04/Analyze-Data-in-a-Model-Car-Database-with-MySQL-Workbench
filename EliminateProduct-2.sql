SELECT productCode, productName, quantityInStock, profitMargin
FROM (
SELECT
p.productCode, productName, quantityInStock, SUM(quantityOrdered), 
ROUND(AVG((priceEach-buyPrice)/priceEach*100), 2) AS profitMargin
FROM
products AS p
LEFT JOIN
orderdetails AS od ON p.productCode=od.productCode
LEFT JOIN
orders AS o ON od.orderNumber=o.orderNumber
GROUP BY p.productCode, productName, quantityInStock
HAVING SUM(quantityOrdered)<1000
) AS subtable
ORDER BY profitMargin ASC