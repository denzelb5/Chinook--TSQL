-- invoices_line_item_count.sql: Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT COUNT(invoiceline.InvoiceLineId) AS TotalInvoiceLineItems, Invoice.* 
FROM Invoice 
JOIN InvoiceLine ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY Invoice.InvoiceId, CustomerId, InvoiceDate, BillingAddress,
		 BillingCity, BillingCountry, BillingState, BillingPostalCode, Total;