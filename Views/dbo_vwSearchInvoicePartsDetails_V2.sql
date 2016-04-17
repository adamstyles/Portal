SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwSearchInvoicePartsDetails_V2]
AS
SELECT     fc.tblInvoiceDetails.lngInvoiceID, fc.tblInvoiceDetails.lngCompanyID, fc.tblInvoiceDetails.lngCustomerID, fc.tblInvoiceDetails.strInvoiceNo, 
                      isnull(fc.tblCustomerDetails.strCustSurname, '') + isnull(fc.tblCustomerDetails.strCustOtherName, '') AS strCustName, 
                      ISAS_PARTS.dbo.tblCompanyDetails.CompanyName AS strCompanyName, fc.tblInvoiceDetails.strOrderNo, 
                      fc.tblInvoiceDetails.strUserCode AS salesman, fc.tblInvoiceDetails.dtInvoiceDate, fc.tblInvoiceDetails.ynOnHold, fc.tblInvoiceParts.strDescription, 
                      fc.tblInvoiceParts.strStockCode, fc.tblInvoiceParts.strBrand, fc.tblInvoiceParts.strSupplierPartCode, fc.tblInvoiceParts.curTotalPrice, 
                      fc.tblInvoiceDetails.lngCreditFromInvoiceID, fc.tblInvoiceDetails.dtEDITimeStamp, fc.tblInvoiceDetails.ynQuote, fc.tblInvoiceDetails.ynDeleted, 
                      fc.tblInvoiceparts.invpartid, fc.tblInvoiceParts.sngQty, SUM([curTotalPrice] * CASE isnull([lngCreditFromInvoiceID], 0) WHEN 0 THEN 1 ELSE - 1 END) 
                      AS TotalPrice, SUM([curTotalPrice] * CASE isnull([lngCreditFromInvoiceID], 0) WHEN 0 THEN CASE isnull([ynQuote], 0) 
                      WHEN 0 THEN 1 ELSE 0 END ELSE - 1 END) AS TotalPriceExQuotes, SUM(round(isnull([curSellPrice], 0) * isnull([sngQty], 0) * (1 - isnull([sngDiscount], 
                      0) / 100), 2) * CASE isnull([lngCreditFromInvoiceID], 0) WHEN 0 THEN CASE isnull([ynQuote], 0) WHEN 0 THEN 1 ELSE 0 END ELSE - 1 END) 
                      AS TotalPriceExTaxQuotes, SUM(round(isnull([curSellPrice], 0) * isnull([sngQty], 0) * (1 - isnull([sngDiscount], 0) / 100), 2) 
                      * CASE isnull([lngCreditFromInvoiceID], 0) WHEN 0 THEN 1 ELSE - 1 END) AS TotalPriceExTax, 
                      CASE WHEN fc.tblUserSecurity.bytSalesmanNo = 1 THEN 'SL' ELSE fc.tblInvoiceDetails.strUserCode END AS strUserCode, 
                      fc.tblInvoiceDetails.ynContract, fc.tblInvoiceDetails.strCustomerName, COUNT(DISTINCT fc.tblInvoiceDetails.lngInvoiceID) AS Invoices
FROM         ISAS_PARTS.dbo.tblCompanyDetails RIGHT OUTER JOIN
                      fc.tblUserSecurity INNER JOIN
                      fc.tblInvoiceDetails ON fc.tblUserSecurity.strUserCode = fc.tblInvoiceDetails.strUserCode ON 
                      ISAS_PARTS.dbo.tblCompanyDetails.CompanyID = fc.tblInvoiceDetails.lngCompanyID LEFT OUTER JOIN
                      fc.tblCustomerDetails ON fc.tblInvoiceDetails.lngCustomerID = fc.tblCustomerDetails.lngCustomerID LEFT OUTER JOIN
                      fc.tblInvoiceParts ON fc.tblInvoiceDetails.lngInvoiceID = fc.tblInvoiceParts.lngInvoiceID
GROUP BY fc.tblInvoiceDetails.lngInvoiceID, fc.tblInvoiceDetails.lngCompanyID, fc.tblInvoiceDetails.lngCustomerID, fc.tblInvoiceDetails.strInvoiceNo, 
                      isnull(fc.tblCustomerDetails.strCustSurname, '') + isnull(fc.tblCustomerDetails.strCustOtherName, ''), 
                      ISAS_PARTS.dbo.tblCompanyDetails.CompanyName, fc.tblInvoiceDetails.strOrderNo, fc.tblInvoiceDetails.strUserCode, 
                      fc.tblInvoiceDetails.dtInvoiceDate, fc.tblInvoiceParts.strDescription, fc.tblInvoiceParts.strStockCode, fc.tblInvoiceParts.strBrand, 
                      fc.tblInvoiceParts.strSupplierPartCode, fc.tblInvoiceParts.curTotalPrice, fc.tblInvoiceDetails.lngCreditFromInvoiceID, 
                      fc.tblInvoiceDetails.dtEDITimeStamp, fc.tblInvoiceParts.sngQty, fc.tblInvoiceDetails.ynOnHold, fc.tblInvoiceDetails.ynQuote, 
                      fc.tblInvoiceDetails.ynDeleted, fc.tblUserSecurity.bytSalesmanNo, fc.tblInvoiceDetails.ynContract, fc.tblInvoiceparts.invpartid, 
                      fc.tblInvoiceDetails.strCustomerName
GO