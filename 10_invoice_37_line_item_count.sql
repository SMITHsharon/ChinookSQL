/*Looking at the InvoiceLine table, provide a query that COUNTs the number of line items 
for Invoice ID 37.*/
select 
	[InvoiceId],
	count(*) as TotalLineItems
from [InvoiceLine]
where [InvoiceId] is 37