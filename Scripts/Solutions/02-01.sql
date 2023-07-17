SELECT emp.employeeId, emp.firstName, emp.lastName, count(*) AS carsSold
FROM employee emp
INNER JOIN sales sls 
    ON emp.employeeId = sls.employeeId
GROUP BY emp.employeeId, emp.firstName, emp.lastName
ORDER BY carsSold DESC;