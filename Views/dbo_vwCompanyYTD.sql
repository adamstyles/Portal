SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwCompanyYTD]
AS
SELECT TOP 100 PERCENT *,
                   (SELECT SUM(ff.totalPrice)
                    FROM   dbo.vwCompanyTurnover ff
                    WHERE ((ff.mm < 7 AND ff.year = f.year AND ff.mm <= f.mm AND f.mm < 7) OR
                                   (f.mm >= 7 AND ff.year = f.year AND ff.mm <= f.mm AND ff.mm >= 7) OR
                                   (f.mm < 7 AND ff.year = f.year - 1 AND ff.mm >= 7)) AND (ff.CompanyName = f.CompanyName)) AS TotalPriceYTD,
                   (SELECT SUM(ff.totalPriceExTax)
                    FROM   dbo.vwCompanyTurnover ff
                    WHERE ((ff.mm < 7 AND ff.year = f.year AND ff.mm <= f.mm AND f.mm < 7) OR
                                   (f.mm >= 7 AND ff.year = f.year AND ff.mm <= f.mm AND ff.mm >= 7) OR
                                   (f.mm < 7 AND ff.year = f.year - 1 AND ff.mm >= 7)) AND (ff.CompanyName = f.CompanyName)) AS TotalPriceExTaxYTD,
                   (SELECT SUM(ff.totalPriceExQuotes)
                    FROM   dbo.vwCompanyTurnover ff
                    WHERE ((ff.mm < 7 AND ff.year = f.year AND ff.mm <= f.mm AND f.mm < 7) OR
                                   (f.mm >= 7 AND ff.year = f.year AND ff.mm <= f.mm AND ff.mm >= 7) OR
                                   (f.mm < 7 AND ff.year = f.year - 1 AND ff.mm >= 7)) AND (ff.CompanyName = f.CompanyName)) AS TotalPriceExQuotesYTD,
                   (SELECT SUM(ff.totalPriceExTaxQuotes)
                    FROM   dbo.vwCompanyTurnover ff
                    WHERE ((ff.mm < 7 AND ff.year = f.year AND ff.mm <= f.mm AND f.mm < 7) OR
                                   (f.mm >= 7 AND ff.year = f.year AND ff.mm <= f.mm AND ff.mm >= 7) OR
                                   (f.mm < 7 AND ff.year = f.year - 1 AND ff.mm >= 7)) AND (ff.CompanyName = f.CompanyName)) AS TotalPriceExTaxQuotesYTD
FROM  dbo.vwCompanyTurnover f
ORDER BY [Year], mm


GO