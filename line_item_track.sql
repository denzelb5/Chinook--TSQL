--line_item_track.sql: Provide a query that includes the purchased track name with each invoice line item.

SELECT InvoiceLine.*, Track.Name AS TrackName
FROM Invoiceline
JOIN Track
ON InvoiceLine.TrackId = Track.TrackId;