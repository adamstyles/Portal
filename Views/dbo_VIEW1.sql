SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[VIEW1]
AS
SELECT ISAS_PARTS.dbo.tblPart.PartID, ISAS_PARTS.dbo.tblPart.ISASStockCode
FROM  fc.tblInvoiceParts INNER JOIN
               ISAS_PARTS.dbo.tblPart ON fc.tblInvoiceParts.strStockCode = ISAS_PARTS.dbo.tblPart.ISASStockCode
WHERE (ISAS_PARTS.dbo.tblPart.FC = ISAS_PARTS.dbo.tblPart.FC)
GO