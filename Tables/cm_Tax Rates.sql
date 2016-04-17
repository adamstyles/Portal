CREATE TABLE [cm].[Tax Rates] (
  [Tax Category] [nvarchar](1) NOT NULL,
  [Tax Rate] [real] NULL,
  [boolDefault] [bit] NOT NULL CONSTRAINT [DF_Tax Rates_boolDefault] DEFAULT (0),
  CONSTRAINT [PK_Tax Rates] PRIMARY KEY CLUSTERED ([Tax Category])
)
ON [PRIMARY]
GO