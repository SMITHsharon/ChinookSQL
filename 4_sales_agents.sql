/*Provide a query showing only the Employees who are Sales Agents.*/
SELECT [FirstName], [LastName], [Title]
FROM [EMPLOYEE]
WHERE [Title] = "Sales Support Agent"