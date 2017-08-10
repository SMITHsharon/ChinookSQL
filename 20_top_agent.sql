/*Which sales agent made the most in sales over all?*/
select 
	FirstName  ||  ' ' || LastName as 'Top Sales Rep', 
		max(TotalSales) as 'Total Sales'
from (
	select
			e.FirstName as FirstName, 
			e.LastName as LastName,
			round(sum(i.Total) ,2) as TotalSales
from [Invoice] as i
join 
	[Customer] as c on c.[CustomerId] = i.[CustomerId]
join 
	[Employee] as e on e.[EmployeeId] = c.[SupportRepId]
group by c.SupportRepId )
