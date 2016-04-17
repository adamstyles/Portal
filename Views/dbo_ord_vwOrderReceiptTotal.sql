SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ord_vwOrderReceiptTotal]
AS
SELECT     jspartsID, SUM(ISNULL(qtyReceived, 0)) AS QtyRec, MAX(dateReceived) AS DateRec
FROM         dbo.ord_tblOrderReceipt
GROUP BY jspartsID
GO