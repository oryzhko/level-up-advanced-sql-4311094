SELECT emp.employeeId, emp.firstName, emp.lastName, 
    MIN(sls.salesAmount) AS cheap_car,
    MAX(sls.salesAmount) AS expensive_car
FROM employee emp
INNER JOIN sales sls 
    ON emp.employeeId = sls.employeeId
WHERE sls.soldDate >= DATE('now','start of year')
GROUP BY emp.employeeId, emp.firstName, emp.lastName
ORDER BY expensive_car DESC;