SET QUOTED_IDENTIFIER OFF

SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ord_vwOrders]
AS
SELECT     dbo.ord_tblOrders.orderNo AS [Order No], substring(dbo.ord_tblOrders.orderNo, 0, charindex('-', dbo.ord_tblOrders.orderNo)) AS Initials, 
                      dbo.ord_tblOrders.supplier AS Supplier, dbo.ord_tblOrders.orderDate AS [Order Date], dbo.ord_tblStockLocations.stockLocation AS Location, 
                      dbo.ord_tblOrders.suppliercontact AS Contact, dbo.ord_tblOrders.supplierphone AS Phone, 
                      CASE WHEN dbo.ord_tblOrders.deleted = 1 THEN 'C' WHEN dbo.ord_tblOrders.ordered = 0 THEN 'H' ELSE 'S' END AS Status
FROM         dbo.ord_tblStockLocations INNER JOIN
                      dbo.ord_tblOrders ON dbo.ord_tblStockLocations.locationID = dbo.ord_tblOrders.stockLocation
GO