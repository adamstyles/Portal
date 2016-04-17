CREATE TABLE [fc].[import parts] (
  [SheilaID] [int] NOT NULL,
  [OrigStockCode] [nvarchar](50) NOT NULL,
  [NewStockCode] [nvarchar](50) NOT NULL,
  [Desc] [nvarchar](255) NULL,
  [Supplier] [nvarchar](50) NULL,
  [SellPrice] [money] NULL,
  [Price10] [real] NULL,
  [UnitsQty] [nvarchar](50) NOT NULL,
  CONSTRAINT [IX_import parts] UNIQUE ([SheilaID], [OrigStockCode], [NewStockCode])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_NewStockCode]
  ON [fc].[import parts] ([NewStockCode])
  ON [PRIMARY]
GO

CREATE INDEX [IX_OrigStockCode]
  ON [fc].[import parts] ([OrigStockCode])
  ON [PRIMARY]
GO

CREATE INDEX [IX_SheilaID]
  ON [fc].[import parts] ([SheilaID])
  ON [PRIMARY]
GO