/*brazil_customers_invoices.sql: Provide a query showing the Invoices of customers who are from Brazil. 
The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country. */

SELECT FirstName, LastName, InvoiceId, InvoiceDate FROM Customer
	JOIN Invoice
		ON Customer.CustomerId = Invoice.CustomerId
		WHERE Customer.Country = 'Brazil';