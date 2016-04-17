CREATE TABLE [dbo].[GSTRates] (
  [dtSoFY] [smalldatetime] NOT NULL,
  [dtEoFY] [smalldatetime] NOT NULL,
  [sngGSTRate] [real] NOT NULL,
  [boolDefault] [bit] NOT NULL CONSTRAINT [DF_GSTRates_boolDefault] DEFAULT (0),
  CONSTRAINT [PK_GSTRates] PRIMARY KEY CLUSTERED ([dtSoFY], [dtEoFY])
)
ON [PRIMARY]
GO