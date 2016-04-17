SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwContractParts_AlcanGove]
AS
SELECT     TOP 100 PERCENT ISAS_PARTS.dbo.tblContractParts.ContractItemNo, ISAS_PARTS.dbo.tblContractParts.ContractStockCode, 
                      ISAS_PARTS.dbo.tblPart.Description, ISAS_PARTS.dbo.tblContractParts.ContractCost
FROM         ISAS_PARTS.dbo.tblContractParts INNER JOIN
                      ISAS_PARTS.dbo.tblCompanyDetails ON ISAS_PARTS.dbo.tblContractParts.CompanyID = ISAS_PARTS.dbo.tblCompanyDetails.CompanyID INNER JOIN
                      ISAS_PARTS.dbo.tblPart ON ISAS_PARTS.dbo.tblContractParts.PartID = ISAS_PARTS.dbo.tblPart.PartID
WHERE     (ISAS_PARTS.dbo.tblCompanyDetails.CompanyName = 'ALCAN GOVE')
ORDER BY ISAS_PARTS.dbo.tblContractParts.ContractItemNo
GO