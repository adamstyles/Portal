SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwOrderReceipt_LastCheckedInBy]
AS
SELECT     TOP 100 PERCENT dbo.vwOrderReceipt_LastReceiptID.jspartsID, dbo.ord_tblOrderReceipt.checkedInBy
FROM         dbo.vwOrderReceipt_LastReceiptID INNER JOIN
                      dbo.ord_tblOrderReceipt ON dbo.vwOrderReceipt_LastReceiptID.ReceiptID = dbo.ord_tblOrderReceipt.receiptID
ORDER BY dbo.vwOrderReceipt_LastReceiptID.jspartsID
GO