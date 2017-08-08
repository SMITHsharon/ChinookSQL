/*Provide a query that shows the invoices associated with each sales agent. 
The resultant table should include the Sales Agent's full name.*/
SELECT i.*, e.FirstName, e.LastName, e.Title
FROM [INVOICE] AS i
JOIN [CUSTOMER]  AS c ON c.CustomerId = i.CustomerId
JOIN [EMPLOYEE]  AS e ON e.EmployeeId = c.SupportRepId

