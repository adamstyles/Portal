SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwSalesTurnoverDetail_GI]
AS
SELECT     TOP 100 PERCENT fc.tblInvoiceDetails.strInvoiceNo, fc.tblInvoiceDetails.dtInvoiceDate, fc.tblInvoiceDetails.strUserCode AS Salesman, 
                      SUM(round(isnull([curSellPrice], 0) * isnull([sngQty], 0) * (1 - isnull([sngDiscount], 0) / 100), 2) * CASE isnull([lngCreditFromInvoiceID], 0) 
                      WHEN 0 THEN 1 ELSE - 1 END) AS TotalPriceExTax, SUM([curTotalPrice] * CASE isnull([lngCreditFromInvoiceID], 0) WHEN 0 THEN 1 ELSE - 1 END) 
                      AS TotalPrice, SUM(round(isnull([curSellPrice], 0) * isnull([sngQty], 0) * (1 - isnull([sngDiscount], 0) / 100), 2) * CASE isnull([lngCreditFromInvoiceID], 0) 
                      WHEN 0 THEN CASE isnull([ynQuote], 0) WHEN 0 THEN 1 ELSE 0 END ELSE - 1 END) AS TotalPriceExTaxQuotes, 
                      SUM([curTotalPrice] * CASE isnull([lngCreditFromInvoiceID], 0) WHEN 0 THEN CASE isnull([ynQuote], 0) WHEN 0 THEN 1 ELSE 0 END ELSE - 1 END) 
                      AS TotalPriceExQuotes
FROM         fc.tblUserSecurity INNER JOIN
                      fc.tblInvoiceDetails INNER JOIN
                      fc.tblInvoiceParts ON fc.tblInvoiceDetails.lngInvoiceID = fc.tblInvoiceParts.lngInvoiceID ON 
                      fc.tblUserSecurity.strUserCode = fc.tblInvoiceDetails.strUserCode
WHERE     (fc.tblInvoiceDetails.ynQuote = 0) AND (fc.tblInvoiceDetails.lngCompanyID = 716)
GROUP BY fc.tblInvoiceDetails.strInvoiceNo, fc.tblInvoiceDetails.dtInvoiceDate, fc.tblInvoiceDetails.strUserCode
ORDER BY fc.tblInvoiceDetails.strInvoiceNo, fc.tblInvoiceDetails.dtInvoiceDate, fc.tblInvoiceDetails.strUserCode
GO