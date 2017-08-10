/*Provide a query that shows all the Tracks, but displays no IDs. 
The result should include the Album name, Media type and Genre.*/
select distinct
	t.Name as 'Track Name',
	a.Title as 'Album Title', 
	m.Name as 'Media Type', 
	g.Name as Genre
from [Track] as t
join 
	[Album]  as a on a.AlbumId = t.albumId
join 
	[MediaType] as m on m.MediaTypeId = t.MediaTypeId
join 
	[Genre] as g on g.GenreId = t.GenreId
