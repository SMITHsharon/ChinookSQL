/*Provide a query that includes the purchased track name with each invoice line item.*/
select i.*, t.[name]
from [InvoiceLine] as i
JOIN [Track] as t on i.[InvoiceId] = t.[TrackId]