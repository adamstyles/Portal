CREATE TABLE [fc].[tblTaxRates] (
  [strTaxCat] [int] NOT NULL CONSTRAINT [DF_tblTaxRates_strTaxCat] DEFAULT (0),
  [sngTaxRate] [real] NOT NULL,
  [strTaxRateDesc] [nvarchar](50) NULL,
  [boolDefault] [bit] NOT NULL CONSTRAINT [DF_tblTaxRates_boolDefault] DEFAULT (0),
  [boolFC] [bit] NOT NULL CONSTRAINT [DF_tblTaxRates_boolFC] DEFAULT (0),
  [boolOrdering] [bit] NOT NULL CONSTRAINT [DF_tblTaxRates_boolOrdering] DEFAULT (0),
  CONSTRAINT [IX_strTaxCat] UNIQUE ([strTaxCat])
)
ON [PRIMARY]
GO