/*How many Invoices were there in 2009 and 2011?*/
select 
	strftime('%Y', InvoiceDate) as Year,
	count (*) as Count
from [Invoice]
where 
	[InvoiceDate] like "%2009%" 
	or [InvoiceDate] like "%2011%"
group by 
	strftime('%Y', InvoiceDate) 

/*
select strftime('%Y', InvoiceDate) as Years, Count(*) as Amount
from [Invoice] as i
Group By (strftime('%Y', InvoiceDate) 
Having (strftime('%Y', InvoiceDate) <= ""2011" 
*/

