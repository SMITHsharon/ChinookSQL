/*Provide a query that shows the most purchased Media Type.*/
select 
	m.Name as 'Type Most Purchased', 
	count (*) as TotalPurchased
from [Track] as t
join [InvoiceLine] as IL on IL.[TrackId] = t.[TrackId]
join [MediaType] as m on m.[MediaTypeId] = t.[MediaTypeId]
group by m.Name
order by TotalPurchased desc
limit 1
