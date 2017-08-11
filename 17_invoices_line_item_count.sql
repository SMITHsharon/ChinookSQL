/*Provide a query that shows all Invoices but includes the # of invoice line items.*/
select 
	i.*, 
	count(l.InvoiceLineId) as 'Line Item Count' 
from Invoice as i
join [InvoiceLine] as l on l.[InvoiceId] = i.[InvoiceId] 
group by i.InvoiceId