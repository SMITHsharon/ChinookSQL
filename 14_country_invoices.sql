/*Provide a query that shows the # of invoices per country.*/
select i.[BillingCountry],
	count (*) as Count
from [Invoice] as i
Group By i.[BillingCountry]
