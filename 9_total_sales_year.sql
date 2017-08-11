/*What are the respective total sales for each of those years?*/
select 
	strftime('%Y', InvoiceDate) as Year,
	sum(Total) as SalesTotal
from [Invoice]
where 
	[InvoiceDate] like "%2009%" 
	or [InvoiceDate] like "%2011%"
group by strftime('%Y', InvoiceDate) 

