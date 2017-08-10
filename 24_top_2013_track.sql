/*Provide a query that shows the most purchased track of 2013.*/
/* ??????? group by ???????? * => 25? /
select 
	TrackName as 'Most Purchased Track, 2013', 
	max(Purchases) as 'Number Purchased'
from (
	select
			t.Name as TrackName, 
			count(IL.Quantity) as Purchases
from [InvoiceLine] as IL
join 
	[Track] as t on t.[TrackId] = IL.[TrackId]
join 
	[Invoice] as i on i.[InvoiceId] = IL.[InvoiceId]
where i.[InvoiceDate] like '%2013%' )
/* group by t.name */
