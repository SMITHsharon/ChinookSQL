/*Provide a query that shows all Invoices but includes the # of invoice line items.*/
select i.*, 
count(l.InvoiceLineId) as LineItemCount from Invoice i
join [InvoiceLine] as l on i.[InvoiceId] = l.[InvoiceId] 
Group By i.InvoiceId