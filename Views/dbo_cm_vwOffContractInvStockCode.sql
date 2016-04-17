SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[cm_vwOffContractInvStockCode]
AS
SELECT     cm.[Shipment Off Contract].Qty * cm.[Shipment Off Contract].[Unit Sell Price] AS Total, cm.[Shipment Summary].[Stock Control Invoice #], 
                      cm.[Shipment Off Contract].Brand, cm.[Shipment Off Contract].Supplier, cm.[Shipment Off Contract].[Part No] AS partNo, 
                      cm.[Shipment Off Contract].[ISAS Part Code], cm.[Shipment Off Contract].[Stock Code] AS ContractStockCode, cm.[Shipment Off Contract].Qty, 
                      cm.[Shipment Off Contract].[Unit Sell Price], cm.[Shipment Summary].[Shipment Date]
FROM         cm.[Shipment Summary] INNER JOIN
                      cm.[Shipment Off Contract] ON cm.[Shipment Summary].[Shipment ID] = cm.[Shipment Off Contract].[Shipment ID]
WHERE     (cm.[Shipment Summary].[Entry ID] = 5)
GO