CREATE TABLE [dbo].[ISAS_DISCOUNT_SCHEDULE] (
  [SupplierID] [int] NOT NULL,
  [PartNoWildcard] [nvarchar](50) NOT NULL,
  [Discount] [real] NULL,
  CONSTRAINT [PK_ISAS_DISCOUNT_SCHEDULE] PRIMARY KEY CLUSTERED ([PartNoWildcard])
)
ON [PRIMARY]
GO