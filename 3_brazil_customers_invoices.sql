/*Provide a query showing the Invoices of customers who are from Brazil. 
The resultant table should show 
the customer's full name, Invoice ID, Date of the invoice and billing country.*/
select 
	[InvoiceID], 
	[InvoiceDate], 
	[FirstName] || ' ' || [LastName], 
	[BillingCountry]
from [Customer] as c
join [Invoice] as i on c.CustomerID = i.CustomerID
where [Country] is "Brazil"
