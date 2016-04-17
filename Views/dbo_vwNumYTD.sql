SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwNumYTD]
AS
SELECT TOP 100 PERCENT *,
                   (SELECT SUM(ff.totalPrice)
                    FROM   dbo.vwsalesnumturnover ff
                    WHERE ((ff.mm < 7 AND ff.year = f.year AND ff.mm <= f.mm AND f.mm < 7) OR
                                   (f.mm >= 7 AND ff.year = f.year AND ff.mm <= f.mm AND ff.mm >= 7) OR
                                   (f.mm < 7 AND ff.year = f.year - 1 AND ff.mm >= 7)) AND (ff.salesman = f.salesman)) AS TotalPriceYTD,
                   (SELECT SUM(ff.totalPriceExTax)
                    FROM   dbo.vwsalesnumturnover ff
                    WHERE ((ff.mm < 7 AND ff.year = f.year AND ff.mm <= f.mm AND f.mm < 7) OR
                                   (f.mm >= 7 AND ff.year = f.year AND ff.mm <= f.mm AND ff.mm >= 7) OR
                                   (f.mm < 7 AND ff.year = f.year - 1 AND ff.mm >= 7)) AND (ff.salesman = f.salesman)) AS TotalPriceExTaxYTD,
                   (SELECT SUM(ff.totalPriceExQuotes)
                    FROM   dbo.vwsalesnumturnover ff
                    WHERE ((ff.mm < 7 AND ff.year = f.year AND ff.mm <= f.mm AND f.mm < 7) OR
                                   (f.mm >= 7 AND ff.year = f.year AND ff.mm <= f.mm AND ff.mm >= 7) OR
                                   (f.mm < 7 AND ff.year = f.year - 1 AND ff.mm >= 7)) AND (ff.salesman = f.salesman)) AS TotalPriceExQuotesYTD,
                   (SELECT SUM(ff.totalPriceExTaxQuotes)
                    FROM   dbo.vwsalesnumturnover ff
                    WHERE ((ff.mm < 7 AND ff.year = f.year AND ff.mm <= f.mm AND f.mm < 7) OR
                                   (f.mm >= 7 AND ff.year = f.year AND ff.mm <= f.mm AND ff.mm >= 7) OR
                                   (f.mm < 7 AND ff.year = f.year - 1 AND ff.mm >= 7)) AND (ff.salesman = f.salesman)) AS TotalPriceExTaxQuotesYTD
FROM  dbo.vwSalesNumTurnover f
ORDER BY [Year], mm
GO