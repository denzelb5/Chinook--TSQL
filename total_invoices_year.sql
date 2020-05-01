--total_invoices_year.sql: How many Invoices were there in 2009 and 2011?
SELECT COUNT(*) FROM Invoice
	WHERE YEAR(InvoiceDate) = 2009
	OR YEAR(InvoiceDate) = 2011;

