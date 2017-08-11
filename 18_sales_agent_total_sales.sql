/*Provide a query that shows total sales made by each sales agent.*/
select 
	e.FirstName  ||  ' ' || e.LastName as 'Sales Agent', 
	round(sum(i.Total), 2) as 'Total Sales'
from [Invoice] as i
join [Customer] as c on c.[CustomerId] = i.[CustomerId]
join [Employee] as e on e.[EmployeeId] = c.[SupportRepId]
group by e.EmployeeId
order by e.LastName
