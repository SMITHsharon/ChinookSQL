/*Provide a query that shows the top 3 best selling artists.*/
select 
	a.[Name] as 'Artist Name', 
	count(IL.Quantity) as BestSelling
from [InvoiceLine] as IL
join 
	[Track] as t on t.[TrackId] = IL.[TrackId]
join 
	[Album] on [Album].[AlbumId] = t.[AlbumId]
join 
	[Artist] as a on a.[ArtistId] = [Album].[ArtistID]
group by a.Name
order by BestSelling Desc
limit 3
