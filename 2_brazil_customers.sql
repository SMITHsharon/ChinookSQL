/*Provide a query only showing the Customers from Brazil.*/
select 
	[FirstName] || ' ' || [LastName], 
	[Country]
from [customer]
where [Country] is "Brazil"
/*where [Country] = "Brazil"*/
