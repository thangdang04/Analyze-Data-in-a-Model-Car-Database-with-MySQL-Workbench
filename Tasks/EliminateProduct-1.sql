SELECT 
productCode, productName, 
CASE WHEN DATEDIFF(shippedDate, orderDate) <= DATEDIFF(requiredDate, orderDate) THEN 'On time' ELSE 'Late' END AS deliveryStatus
FROM (
SELECT
p.productCode, productName, orderDate, requiredDate, shippedDate
FROM
products AS p
LEFT JOIN
orderdetails AS od ON p.productCode=od.productCode
LEFT JOIN
orders AS o ON od.orderNumber=o.orderNumber
WHERE shippedDate IS NOT NULL
AND orderDate IS NOT NULL
AND requiredDate IS NOT NULL
) AS subtable
HAVING deliveryStatus='Late'
ORDER BY productCode ASC