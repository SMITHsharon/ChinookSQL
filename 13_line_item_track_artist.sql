/*Provide a query that includes the purchased track name AND artist name with each invoice line item*/
select 
	i.*, 
	a.[name] as ArtistName,
	t.[name] as TrackName
from [InvoiceLine] as i
join 
	[Track] as t on t.[TrackId] = i.[TrackId]
join 
	[Album] on [Album].[AlbumId] = t.[AlbumId]
join 
	[Artist] as a on a.[ArtistId] = [Album].[ArtistId]
