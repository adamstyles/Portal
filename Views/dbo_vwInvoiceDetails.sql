SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwInvoiceDetails]
AS
SELECT DISTINCT 
               fc.vwSearchInvoicePartsDetails.lngInvoiceID, fc.vwSearchInvoicePartsDetails.strInvoiceNo, fc.vwSearchInvoicePartsDetails.strCompanyName, 
               fc.vwSearchInvoicePartsDetails.dtInvoiceDate, SUM(fc.vwSearchInvoicePartsDetails.TotalPrice) AS TotalPrice, 
               SUM(fc.vwSearchInvoicePartsDetails.TotalPriceExQuotes) AS TotalPriceExQuotes, 
               CASE WHEN fc.tblUserSecurity.bytSalesmanNo = 1 THEN 'SALES' ELSE fc.vwSearchInvoicePartsDetails.strUserCode END AS Salesman
FROM  fc.vwSearchInvoicePartsDetails INNER JOIN
               fc.tblUserSecurity ON fc.vwSearchInvoicePartsDetails.strUserCode = fc.tblUserSecurity.strUserCode
GROUP BY fc.vwSearchInvoicePartsDetails.lngInvoiceID, fc.vwSearchInvoicePartsDetails.strInvoiceNo, fc.vwSearchInvoicePartsDetails.strCompanyName, 
               fc.vwSearchInvoicePartsDetails.dtInvoiceDate, fc.vwSearchInvoicePartsDetails.strUserCode, 
               CASE WHEN fc.tblUserSecurity.bytSalesmanNo = 1 THEN 'SALES' ELSE fc.vwSearchInvoicePartsDetails.strUserCode END
GO