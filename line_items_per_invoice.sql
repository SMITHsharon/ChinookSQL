/*Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice.*/
select Count(*) as Count
from [InvoiceLine] as i
group by i.InvoiceId