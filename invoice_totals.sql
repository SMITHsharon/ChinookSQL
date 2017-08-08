/*Provide a query that shows the Invoice Total, Customer name, Country and 
Sale Agent name for all invoices and customers.*/
select c.FirstName || ' ' || c.LastName, c.Country, i.Total, e.[FirstName]  || ' ' || e.[LastName]
from [Invoice] as i
join [Customer]  as c on i.CustomerId = c.CustomerId
join [employee] as e on c.SupportRepId = e.EmployeeId
order by e.LastName
