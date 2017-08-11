/*Provide a query that shows the top 5 most purchased songs.*/
select 
	t.Name as 'Top Five Songs', 
	count(IL.TrackId) as Purchased
from [InvoiceLine] as IL
join [Track] as t on t.[TrackId] = IL.[TrackId]
join [Invoice] as i on i.[InvoiceId] = IL.[InvoiceId]
group by t.Name
order by Purchased Desc 
limit 5
