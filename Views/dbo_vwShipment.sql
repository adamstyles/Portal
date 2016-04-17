SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwShipment]
AS
SELECT DISTINCT 
               TOP 100 PERCENT cm.[Shipment Summary].[Shipment ID], cm.[Shipment Summary].[Shipment No], cm.[Shipment Summary].[Shipment Order No], 
               isas_parts.dbo.tblContractParts.ContractItemNo, isas_parts.dbo.tblContractParts.ContractStockCode, isas_parts.dbo.tblpart.Description, 
               isas_parts.dbo.tblpart.UnitOfMeasureID, isas_parts.dbo.tblpart.Brand, isas_parts.dbo.tblpart.SupplierPartCode, cm.[Shipment Items].[Order Item No], 
               cm.[Shipment Items].Qty, cm.[Shipment Items].[Unit Sell Price], cm.[Shipment Items].[Due Date], cm.[Shipment Items].[Late Comment ID], 
               isas_parts.dbo.tblCompanyDetails.SheilaDebtorCode, cm.[Shipment Summary].[Contract ID], cm.[Shipment Summary].[Entry ID], 
               cm.[Shipment Summary].[Stock Control Invoice #], isas_parts.dbo.tblpart.PartID, cm.[Shipment Items].ItemID
FROM  isas_parts.dbo.tblCompanyDetails INNER JOIN
               isas_parts.dbo.tblpart INNER JOIN
               isas_parts.dbo.tblContractParts ON isas_parts.dbo.tblpart.PartID = isas_parts.dbo.tblContractParts.PartID INNER JOIN
               cm.[Shipment Summary] INNER JOIN
               cm.[Shipment Items] ON cm.[Shipment Summary].[Shipment ID] = cm.[Shipment Items].[Shipment ID] ON 
               isas_parts.dbo.tblpart.PartID = cm.[Shipment Items].[Part ID] ON 
               isas_parts.dbo.tblCompanyDetails.CompanyID = cm.[Shipment Summary].[Contract ID]
ORDER BY cm.[Shipment Summary].[Shipment No], isas_parts.dbo.tblContractParts.ContractStockCode, cm.[Shipment Items].[Order Item No]
GO