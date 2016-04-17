SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwEDI_INVOICE_S204Check]
AS
SELECT     AutoID, InvoiceNo, Description, RefCode, PartID
FROM         dbo.EDI_INVOICE
WHERE     (PartID = 15730) AND (RefCode <> N'S204')
GO