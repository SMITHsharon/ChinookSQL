/*Provide a query that shows the # of invoices per country.*/
select 
	[BillingCountry],
	count (*) as InvCount
from [Invoice]
group by 
	[BillingCountry]
