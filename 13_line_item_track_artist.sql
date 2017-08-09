/*Provide a query that includes the purchased track name AND artist name with each invoice line item*/
select i.*, t.[name], a.[name]
from [InvoiceLine] as i
JOIN [Track] as t on i.[InvoiceId] = t.[TrackId]
JOIN [Album] on t.[AlbumId] = [Album].[AlbumId]
JOIN [Artist] as a on a.[ArtistId] = [Album].[ArtistId]