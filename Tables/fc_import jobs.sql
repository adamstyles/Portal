CREATE TABLE [fc].[import jobs] (
  [SheilaID] [int] NOT NULL,
  [OrigCode] [nvarchar](50) NOT NULL,
  [NewCode] [nvarchar](50) NULL,
  [Desc] [nvarchar](255) NULL,
  [Price Quoted] [money] NULL CONSTRAINT [DF_import jobs_Price Quoted] DEFAULT (0),
  CONSTRAINT [IX_import jobs] UNIQUE ([SheilaID], [OrigCode], [NewCode])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_NewCode]
  ON [fc].[import jobs] ([NewCode])
  ON [PRIMARY]
GO

CREATE INDEX [IX_OrigCode]
  ON [fc].[import jobs] ([OrigCode])
  ON [PRIMARY]
GO

CREATE INDEX [IX_SheilaID]
  ON [fc].[import jobs] ([SheilaID])
  ON [PRIMARY]
GO