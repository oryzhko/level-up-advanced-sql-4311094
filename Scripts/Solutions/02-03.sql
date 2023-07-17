SELECT emp.employeeId, emp.firstName, emp.lastName, 
    COUNT(sls.salesAmount) AS sales_count
FROM employee emp
INNER JOIN sales sls 
    ON emp.employeeId = sls.employeeId
WHERE sls.soldDate >= DATE('now','start of year')
GROUP BY emp.employeeId, emp.firstName, emp.lastName
HAVING COUNT(sls.salesAmount) > 5
ORDER BY sales_count DESC;