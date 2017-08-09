/*Provide a query that shows all the Tracks, but displays no IDs. 
The result should include the Album name, Media type and Genre.*/
SELECT a.Title, m.Name, g.Name
FROM [Track] as t
JOIN [Album]  as a on a.AlbumId = t.albumId
JOIN [MediaType]  as m on m.MediaTypeId = t.MediaTypeId
JOIN [Genre] as g on g.GenreId = t.GenreId
