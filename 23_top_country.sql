/*Which country's customers spent the most?*/
select 
	Country as 'Billing Country', 
	max(TotalSales) as 'Top Sales'
from (select
	BillingCountry as Country,
	sum(Total) as TotalSales
from [Invoice]
group by Country )
