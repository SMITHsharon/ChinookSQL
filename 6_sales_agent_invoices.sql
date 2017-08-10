/*Provide a query that shows the invoices associated with each sales agent. 
The resultant table should include the Sales Agent's full name.*/
select 
	e.FirstName || ' ' || e.LastName, 
	i.*
from [invoice] as i
join 
	[customer]  as c on c.CustomerId = i.CustomerId
join 
	[employee]  as e on e.EmployeeId = c.SupportRepId
/*order by c.SupportRepId*/
order by e.LastName

