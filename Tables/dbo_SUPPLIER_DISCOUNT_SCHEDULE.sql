CREATE TABLE [dbo].[SUPPLIER_DISCOUNT_SCHEDULE] (
  [SupplierID] [int] NOT NULL,
  [DiscountSchedule] [nvarchar](20) NOT NULL,
  [DiscountDescription] [nvarchar](50) NOT NULL,
  [Discount] [float] NULL,
  [GIDiscount] [float] NULL,
  [GIReportMultiplier] [float] NULL,
  CONSTRAINT [PK_SUPPLIER_DISCOUNT_SCHEDULE] PRIMARY KEY CLUSTERED ([SupplierID], [DiscountSchedule], [DiscountDescription])
)
ON [PRIMARY]
GO