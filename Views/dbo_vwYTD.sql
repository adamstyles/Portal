SET QUOTED_IDENTIFIER OFF

SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwYTD]
AS
SELECT TOP 100 PERCENT *,
                   (SELECT SUM(ff.totalPrice)
                    FROM   fc.vwsalesturnover ff
                    WHERE ((ff.mm < 7 AND ff.year = f.year AND ff.mm <= f.mm AND f.mm < 7) OR
                                   (f.mm >= 7 AND ff.year = f.year AND ff.mm <= f.mm AND ff.mm >= 7) OR
                                   (f.mm < 7 AND ff.year = f.year - 1 AND ff.mm >= 7)) AND (ff.salesman = f.salesman)) AS TotalPriceYTD,
                   (SELECT SUM(ff.totalPriceExTax)
                    FROM   fc.vwsalesturnover ff
                    WHERE ((ff.mm < 7 AND ff.year = f.year AND ff.mm <= f.mm AND f.mm < 7) OR
                                   (f.mm >= 7 AND ff.year = f.year AND ff.mm <= f.mm AND ff.mm >= 7) OR
                                   (f.mm < 7 AND ff.year = f.year - 1 AND ff.mm >= 7)) AND (ff.salesman = f.salesman)) AS TotalPriceExTaxYTD,
                   (SELECT SUM(ff.totalPriceExQuotes)
                    FROM   fc.vwsalesturnover ff
                    WHERE ((ff.mm < 7 AND ff.year = f.year AND ff.mm <= f.mm AND f.mm < 7) OR
                                   (f.mm >= 7 AND ff.year = f.year AND ff.mm <= f.mm AND ff.mm >= 7) OR
                                   (f.mm < 7 AND ff.year = f.year - 1 AND ff.mm >= 7)) AND (ff.salesman = f.salesman)) AS TotalPriceExQuotesYTD,
                   (SELECT SUM(ff.totalPriceExTaxQuotes)
                    FROM   fc.vwsalesturnover ff
                    WHERE ((ff.mm < 7 AND ff.year = f.year AND ff.mm <= f.mm AND f.mm < 7) OR
                                   (f.mm >= 7 AND ff.year = f.year AND ff.mm <= f.mm AND ff.mm >= 7) OR
                                   (f.mm < 7 AND ff.year = f.year - 1 AND ff.mm >= 7)) AND (ff.salesman = f.salesman)) AS TotalPriceExTaxQuotesYTD
FROM  fc.vwSalesTurnover f
ORDER BY [Year], mm

GO