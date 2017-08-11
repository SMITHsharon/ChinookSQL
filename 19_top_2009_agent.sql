/*Which sales agent made the most in sales in 2009?*/
select 
	FirstName  ||  ' ' || LastName as 'Employee Name', 
	max(TotalSales) as 'Top Sales 2009'
from (select
	e.FirstName as FirstName, 
	e.LastName as LastName,
	round(sum(i.Total) ,2) as TotalSales
from [Invoice] as i
join [Customer] as c on c.[CustomerId] = i.[CustomerId]
join [Employee] as e on e.[EmployeeId] = c.[SupportRepId]
where i.InvoiceDate like '%2009%' )
group by c.SupportRepId 
