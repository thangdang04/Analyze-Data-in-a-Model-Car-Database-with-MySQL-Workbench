SELECT
warehouseName,
SUM(quantityInStock) AS quantityInStock,
warehousePctCap,
FLOOR(SUM(quantityInStock)/warehousePctCap*80)-SUM(quantityInStock) AS productCountToIdealCap
FROM
products AS p
LEFT JOIN
warehouses AS w ON p.warehouseCode=w.warehouseCode
GROUP BY w.warehouseCode
ORDER BY quantityInStock ASC