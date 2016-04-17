SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ord_vwOrderedParts_19092005]
AS
SELECT     dbo.ord_tblOrders.orderNo, qm.job_sheet_parts.job_sheet_id jobSheetID, qm.job_sheet_parts.item_no, dbo.ord_tblOrders.supplier, 
                      dbo.ord_tblOrders.supplierContact, dbo.ord_tblOrders.orderDate, dbo.ord_tblOrders.despatchDateReq, dbo.ord_tblOrders.enteredBy, 
                      dbo.ord_tblOrders.stockLocation, dbo.ord_tblOrders.ordered, dbo.ord_tblOrders.dtEDITimeStamp, dbo.ord_tblOrders.supplierID, 
                      qm.job_sheet_parts.supplier AS isasSupplier, qm.job_sheet_parts.brand, qm.job_sheet_parts.cat_no, qm.job_sheet_parts.description, 
                      qm.job_sheet_parts.secondary_part_code, qm.job_sheet_parts.price, qm.job_sheet_parts.disc, qm.job_sheet_parts.qty, qm.job_sheet_parts.UOM, 
                      qm.job_sheet_parts.date_due, qm.job_sheet_parts.date_expected, qm.job_sheet_parts.received, qm.job_sheet_parts.supplier_cat_no, 
                      qm.job_sheet_parts.book_to, qm.job_sheet_parts.line_type, qm.job_sheet_parts.price * qm.job_sheet_parts.qty AS LineSubTotal, 
                      qm.job_sheet_parts.price * qm.job_sheet_parts.qty * 0.1 AS LineGST, qm.job_sheet_parts.price * qm.job_sheet_parts.qty * 1.1 AS LineTotal, 
                      qm.job_sheet_parts.jspartsid, LEFT(dbo.ord_tblOrders.orderNo, 2) AS Initials, dbo.ord_tblStockLocations.stockLocation AS location, 
                      qm.job_sheet_parts.qty_rec, qm.job_sheet_parts.qty_due, qm.job_sheet_parts.qty_inv, qm.job_sheet_parts.date_rec, qm.job_sheet_parts.date_inv, 
                      CASE WHEN dbo.ord_tblOrders.deleted = 1 THEN 'C' WHEN dbo.ord_tblOrders.ordered = 0 THEN 'H' WHEN qm.job_sheet_parts.received = 1 THEN 'R' WHEN
                       qm.job_sheet_parts.qty_rec > 0 THEN 'P' ELSE 'O' END AS Status, dbo.ord_tblOrders.Followup, dbo.ord_tblOrders.despatchDateAct
FROM         dbo.ord_tblOrders INNER JOIN
                      qm.job_sheet_parts ON dbo.ord_tblOrders.orderNo = qm.job_sheet_parts.order_no INNER JOIN
                      dbo.ord_tblStockLocations ON dbo.ord_tblOrders.stockLocation = dbo.ord_tblStockLocations.locationID
GO