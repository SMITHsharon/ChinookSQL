/*Provide a query showing only the Employees who are Sales Agents.*/
select 
	[FirstName] || ' ' || [LastName], [Title] 
from [Employee]
where [Title] is "Sales Support Agent"