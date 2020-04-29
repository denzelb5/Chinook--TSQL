/* sales_agent_invoices.sql: Provide a query that shows the invoices associated with each sales agent.
The resultant table should include the Sales Agent's full name. */

SELECT Employee.FirstName + ' ' + Employee.LastName AS FullName, Invoice.InvoiceId
	FROM Employee
		JOIN Customer 
			ON Employee.EmployeeId = Customer.SupportRepId
		JOIN Invoice 
			ON Invoice.CustomerId = Customer.CustomerId;
