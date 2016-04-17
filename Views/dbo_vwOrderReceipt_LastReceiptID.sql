SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwOrderReceipt_LastReceiptID]
AS
SELECT     TOP 100 PERCENT jspartsID, MAX(receiptID) AS ReceiptID
FROM         dbo.ord_tblOrderReceipt
GROUP BY jspartsID
HAVING      (jspartsID IS NOT NULL)
ORDER BY jspartsID
GO