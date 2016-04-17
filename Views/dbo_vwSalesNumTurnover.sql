SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwSalesNumTurnover]
AS
SELECT fc.tblUserSecurity.bytSalesmanNo AS Salesman, DATENAME(month, fc.tblInvoiceDetails.dtInvoiceDate) AS Month, 
MONTH(fc.tblInvoiceDetails.dtInvoiceDate) AS mm, YEAR(fc.tblInvoiceDetails.dtInvoiceDate) AS Year, 
SUM(round(isnull([curSellPrice], 0) * isnull([sngQty], 0) * (1 - isnull([sngDiscount], 0) / 100), 2) * CASE isnull([lngCreditFromInvoiceID], 0) WHEN 0 THEN 1 ELSE - 1 END) AS TotalPriceExTax, 
SUM([curTotalPrice] * CASE isnull([lngCreditFromInvoiceID], 0) WHEN 0 THEN 1 ELSE - 1 END) AS TotalPrice, 
SUM(round(isnull([curSellPrice], 0) * isnull([sngQty], 0) * (1 - isnull([sngDiscount], 0) / 100), 2) * CASE isnull([lngCreditFromInvoiceID], 0) WHEN 0 THEN CASE isnull([ynQuote], 0) WHEN 0 THEN 1 ELSE 0 END ELSE - 1 END) 
AS TotalPriceExTaxQuotes,
SUM([curTotalPrice] * CASE isnull([lngCreditFromInvoiceID], 0) WHEN 0 THEN CASE isnull([ynQuote], 0) WHEN 0 THEN 1 ELSE 0 END ELSE - 1 END) 
AS TotalPriceExQuotes,
count(distinct fc.tblInvoiceDetails.lngInvoiceID) as Invoices
FROM  fc.tblUserSecurity INNER JOIN
               fc.tblInvoiceDetails INNER JOIN
               fc.tblInvoiceParts ON fc.tblInvoiceDetails.lngInvoiceID = fc.tblInvoiceParts.lngInvoiceID ON 
               fc.tblUserSecurity.strUserCode = fc.tblInvoiceDetails.strUserCode
GROUP BY MONTH(fc.tblInvoiceDetails.dtInvoiceDate), YEAR(fc.tblInvoiceDetails.dtInvoiceDate), DATENAME(month, 
               fc.tblInvoiceDetails.dtInvoiceDate), fc.tblUserSecurity.bytSalesmanNo
GO