CREATE TABLE [dbo].[tblSalesYTDTotals] (
  [Salesman] [char](10) NOT NULL,
  [mm] [int] NOT NULL,
  [Month] [char](10) NOT NULL,
  [Year] [int] NOT NULL,
  [TotalPriceYTD] [float] NOT NULL,
  [TotalPriceExTaxYTD] [float] NOT NULL,
  [TotalPriceExQuotesYTD] [float] NOT NULL,
  [TotalPriceExTaxQuotesYTD] [float] NOT NULL,
  CONSTRAINT [PK_tblSalesYTDTotals] PRIMARY KEY CLUSTERED ([Salesman], [mm], [Year])
)
ON [PRIMARY]
GO