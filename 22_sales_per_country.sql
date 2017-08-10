/*Provide a query that shows the total sales per country.*/
select 
	[BillingCountry], 
	sum(Total) as 'Total Sales'
from [Invoice]
group by [BillingCountry]
