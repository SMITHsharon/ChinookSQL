/*Provide a query showing the Invoices of customers who are from Brazil. 
The resultant table should show the customer's full name, Invoice ID, 
Date of the invoice and billing country.*/
SELECT [FirstName], [LastName], [InvoiceID], [BillingCountry], [InvoiceDate]
FROM [CUSTOMER]
JOIN [INVOICE] ON [CUSTOMER].CustomerID = [INVOICE].CustomerID
WHERE [Country] = "Brazil"