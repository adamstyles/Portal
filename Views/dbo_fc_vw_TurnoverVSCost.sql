SET QUOTED_IDENTIFIER OFF

SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[fc_vw_TurnoverVSCost]
AS
SELECT     fc.tblInvoiceDetails.strInvoiceNo, fc.tblInvoiceDetails.dtInvoiceDate, fc.tblInvoiceParts.strStockCode, fc.tblInvoiceParts.strSupplierPartCode, 
                      fc.tblInvoiceParts.sngQty, fc.tblInvoiceParts.curSellPrice, fc.tblInvoiceParts.sngDiscount, fc.tblInvoiceParts.curCostPriceLPP, 
                      fc.tblInvoiceParts.curTotalPrice, fc.tblInvoiceParts.curSellPrice * fc.tblInvoiceParts.sngQty AS Turnover, 
                      CASE WHEN strstockcode like 's2%' THEN fc.tblInvoiceParts.curCostPriceLPP ELSE fc.tblInvoiceParts.curCostPriceLPP * fc.tblInvoiceParts.sngQty END AS
                       Cost, fc.tblInvoiceDetails.lngInvoiceID, fc.tblInvoiceParts.invPartID

FROM         fc.tblInvoiceDetails INNER JOIN
                      fc.tblInvoiceParts ON fc.tblInvoiceDetails.lngInvoiceID = fc.tblInvoiceParts.lngInvoiceID INNER JOIN
                      fc.tblUserSecurity ON fc.tblInvoiceDetails.strUserCode = fc.tblUserSecurity.strUserCode
WHERE     (fc.tblInvoiceDetails.lngCompanyID = 536) AND (fc.tblUserSecurity.bytSalesmanNo = 1)


GO