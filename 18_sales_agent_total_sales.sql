/*Provide a query that shows total sales made by each sales agent.*/
Select e.FirstName  ||  ' ' || e.LastName as EmployeeName, 
Sum(i.Total) as TotalSales 
from [Invoice] as i
join [Customer] as c on c.[CustomerId] = i.[CustomerId]
join [Employee] as e on c.[SupportRepId] = e.[EmployeeId]
Group By e.EmployeeId