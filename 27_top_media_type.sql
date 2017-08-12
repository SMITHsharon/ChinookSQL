/*Provide a query that shows the most purchased Media Type.*/
select 
	m.Name as 'Type Most Purchased', 
	count (*) as TotalPurchased
from [MediaType] as m
join [Track] as t on t.[MediaTypeId] = m.[MediaTypeId]
join [InvoiceLine] as IL on IL.[TrackId] = t.[TrackId]
group by m.Name
order by TotalPurchased desc
limit 1
