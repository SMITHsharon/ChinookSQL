/*Provide a query that shows the top 3 best selling artists.*/
/* ???????????? */
select 
	art.[Name] as 'Artist Name', 
	count(*) as BestSelling 
from [Artist] as art
left join [Album] as a on a.[ArtistID] = art.[ArtistId]
left join [Track] as t on t.[AlbumId] = a.[AlbumId]
left join [InvoiceLine] as IL on IL.[TrackId] = t.[TrackId]
group by art.ArtistId
order by BestSelling Desc
limit 3
