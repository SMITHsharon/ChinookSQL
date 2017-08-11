/*Provide a query that shows the Invoice Total, Customer name, Country and 
Sale Agent name for all invoices and customers.*/
select 
	c.FirstName || ' ' || c.LastName, 
	c.Country, 
	i.Total, 
	e.[FirstName]  || ' ' || e.[LastName]
from [Invoice] as i
join [Customer]  as c on c.CustomerId = i.CustomerId
join [Employee] as e on e.EmployeeId = c.SupportRepId 
order by e.LastName
