SELECT emp.firstName AS FirstName, 
    emp.lastName AS LastName,
    emp.title AS Title,
    man.firstName AS ManagerFirstName, 
    man.lastName AS ManagerLastName
FROM employee emp
INNER JOIN employee man 
    ON emp.managerId = man.employeeId;