/*Looking at the InvoiceLine table, provide a query that COUNTs the number of line items 
for Invoice ID 37.*/
select Count(*) as Count
from [InvoiceLine] as i
where i.InvoiceId = 37