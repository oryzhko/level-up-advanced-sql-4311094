-- Select sales person with zero volume

SELECT emp.firstName, emp.lastName, emp.title, SUM(sales.salesAmount) AS sales_volume
FROM employee emp
LEFT JOIN sales ON sales.employeeId = emp.employeeId
WHERE emp.title = 'Sales Person'
GROUP BY emp.firstName, emp.lastName
HAVING SUM(sales.salesAmount) IS NULL;