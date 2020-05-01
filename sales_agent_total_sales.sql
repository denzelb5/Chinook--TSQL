--18. `sales_agent_total_sales.sql`: Provide a query that shows total sales made by each sales agent.

SELECT Employee.FirstName + ' ' + Employee.LastName AS EmployeeName,
SUM(InvoiceLine.Quantity * InvoiceLine.UnitPrice) AS TotalSales
FROM Employee
JOIN Customer ON Customer.SupportRepId = Employee.EmployeeId
JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId
JOIN InvoiceLine ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY Employee.LastName, Employee.FirstName;
	
