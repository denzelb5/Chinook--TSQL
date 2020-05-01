-- top_2009_agent.sql: Which sales agent made the most in sales in 2009? HINT: TOP

 
SELECT TOP(1) Employee.FirstName + ' ' + Employee.LastName AS EmployeeSales,
SUM(InvoiceLine.Quantity * InvoiceLine.UnitPrice) AS TotalEmployeeSales
--INTO #totalSales
FROM Employee
JOIN Customer ON Customer.SupportRepId = Employee.EmployeeId
JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId
JOIN InvoiceLine ON InvoiceLine.InvoiceId = Invoice.InvoiceId
WHERE YEAR(Invoice.InvoiceDate) = 2009
GROUP BY Employee.FirstName, Employee.LastName
ORDER BY TotalEmployeeSales DESC


