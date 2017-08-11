/*Provide a query that shows the count of customers assigned to each sales agent.*/
select 
	e.FirstName  ||  ' ' || e.LastName as 'Sales Agent', 
	count(*) as 'Customer Count'
from [Customer] as c
join [Employee] as e on e.[EmployeeId] = c.[SupportRepId]
group by e.EmployeeId
order by e.LastName