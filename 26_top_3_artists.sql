/*Provide a query that shows the top 3 best selling artists.*/
/* ???????????? */
select 
	a.[Name] as 'Artist Name', 
	count() as BestSelling 
from [track] as t
left join [Album] on [Album].[AlbumId] = t.[AlbumId]
left join [Artist] as a on a.[ArtistId] = [Album].[ArtistID]
left join [InvoiceLine] as IL on IL.[TrackId] = t.[TrackId]
group by a.ArtistId
order by BestSelling Desc
limit 3
