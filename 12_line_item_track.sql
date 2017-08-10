/*Provide a query that includes the purchased track name with each invoice line item.*/
select 
	i.*, 
	t.[name] as TrackName
from 
	[InvoiceLine] as i
join 
	[Track] as t on t.[TrackId] = i.[TrackId]
