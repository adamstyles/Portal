SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [fc].[vwSalesTurnover]
AS
SELECT     fc.tblInvoiceDetails.strUserCode AS Salesman, DATENAME(month, fc.tblInvoiceDetails.dtInvoiceDate) AS Month, 
                      MONTH(fc.tblInvoiceDetails.dtInvoiceDate) AS mm, YEAR(fc.tblInvoiceDetails.dtInvoiceDate) AS Year, SUM(round(isnull([curSellPrice], 0) 
                      * isnull([sngQty], 0) * (1 - isnull([sngDiscount], 0) / 100), 2) * CASE isnull([lngCreditFromInvoiceID], 0) WHEN 0 THEN 1 ELSE - 1 END) 
                      AS TotalPriceExTax, SUM([curTotalPrice] * CASE isnull([lngCreditFromInvoiceID], 0) WHEN 0 THEN 1 ELSE - 1 END) AS TotalPrice, 
                      SUM(round(isnull([curSellPrice], 0) * isnull([sngQty], 0) * (1 - isnull([sngDiscount], 0) / 100), 2) * CASE isnull([lngCreditFromInvoiceID], 0) 
                      WHEN 0 THEN CASE isnull([ynQuote], 0) WHEN 0 THEN 1 ELSE 0 END ELSE - 1 END) AS TotalPriceExTaxQuotes, 
                      SUM([curTotalPrice] * CASE isnull([lngCreditFromInvoiceID], 0) WHEN 0 THEN CASE isnull([ynQuote], 0) WHEN 0 THEN 1 ELSE 0 END ELSE - 1 END) 
                      AS TotalPriceExQuotes, COUNT(DISTINCT fc.tblInvoiceDetails.lngInvoiceID) AS Invoices
FROM         fc.tblInvoiceDetails INNER JOIN
                      fc.tblInvoiceParts ON fc.tblInvoiceDetails.lngInvoiceID = fc.tblInvoiceParts.lngInvoiceID
WHERE     (fc.tblInvoiceDetails.ynQuote = 0) AND (fc.tblInvoiceDetails.lngCompanyID <> 716) AND (fc.tblInvoiceDetails.lngCompanyID <> 532) AND 
                      (fc.tblInvoiceDetails.lngCompanyID <> 226)
GROUP BY MONTH(fc.tblInvoiceDetails.dtInvoiceDate), fc.tblInvoiceDetails.strUserCode, YEAR(fc.tblInvoiceDetails.dtInvoiceDate), DATENAME(month, 
                      fc.tblInvoiceDetails.dtInvoiceDate)
GO