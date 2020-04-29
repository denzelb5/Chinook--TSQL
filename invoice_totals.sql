/*invoice_totals.sql: Provide a query that shows the Invoice Total,
Customer name, Country and Sale Agent name for all invoices and customers.*/

--invoice.total
--customer.firstname and last name
--customer.supportrepid
--employee. id

SELECT Customer.FirstName + ' ' + Customer.LastName AS FullName, Invoice.BillingCountry, Invoice.Total, Employee.EmployeeId
FROM Employee
	JOIN Customer
		ON Employee.EmployeeId = Customer.SupportRepId
	JOIN Invoice 
		ON Customer.CustomerId = Invoice.CustomerId;