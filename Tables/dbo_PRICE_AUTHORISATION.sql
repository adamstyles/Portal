CREATE TABLE [dbo].[PRICE_AUTHORISATION] (
  [SupplierID] [int] NOT NULL,
  [PartNoWildcard] [nvarchar](50) NOT NULL,
  [Discount] [int] NULL,
  CONSTRAINT [PK_PRICE_AUTHORISATION] PRIMARY KEY CLUSTERED ([SupplierID], [PartNoWildcard])
)
ON [PRIMARY]
GO