--total_sales_year.sql: What are the respective total sales for each of those years?

SELECT SUM(Total) FROM Invoice
	WHERE YEAR(InvoiceDate) = 2009
	OR YEAR(InvoiceDate) = 2011;