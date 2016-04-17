SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwOffContractInvoice-InternalItems]
AS
SELECT DISTINCT 
                      TOP 100 PERCENT SOC.*, ISNULL(VWLP.ISASCode, 'S204') AS ISASStock, CASE WHEN ISNULL(VWLP.ISASPartID, 15730) 
                      = 15730 THEN 'S204' ELSE ISNULL(VWLP.ISASSupplierPartCode, 'S204') END AS ISASPartNo, ISNULL(VWLP.ISASCostPriceLPP, 0) AS ISASCostLPP, 
                      ISNULL(VWLP.ISASLineType, 1) AS ISASlinetype, ISNULL(VWLP.ISASPartID, 15730) AS ISASPartID
FROM         cm.[Shipment Off Contract] SOC LEFT OUTER JOIN
                      ISAS_PARTS.dbo.vwLinkedParts VWLP ON SOC.[ISAS Part Code] = VWLP.SupplierPartCode
ORDER BY SOC.[Shipment ID], SOC.[Stock Code]
GO