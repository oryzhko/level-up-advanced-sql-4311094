SELECT emp.firstName AS EmployeeFirstName, emp.lastName AS EmployeeLastName, 
man.firstName AS ManagerFirstName, 
man.lastName AS ManagerLastName
FROM employee emp
INNER JOIN employee man 
ON emp.managerId = man.employeeId;