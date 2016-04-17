SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [fc].[vwSalesmanTurnover]
AS
SELECT SUM(TotalPrice) AS TotalPrice, strUserCode AS Salesman, DATENAME(month, dtInvoiceDate) AS [Month], MONTH(dtInvoiceDate) AS mm, 
               YEAR(dtInvoiceDate) AS [Year]
FROM  fc.vwSearchInvoicePartsDetails
GROUP BY MONTH(dtInvoiceDate), strUserCode, YEAR(dtInvoiceDate), DATENAME(month, dtInvoiceDate)
GO