CREATE TABLE [fc].[import debtors] (
  [SheilaID] [int] NOT NULL,
  [OrigCode] [nvarchar](50) NOT NULL,
  [NewCode] [nvarchar](50) NULL,
  [Desc] [nvarchar](255) NULL,
  [Address1] [nvarchar](100) NULL,
  [Address2] [nvarchar](100) NULL,
  [Address3] [nvarchar](100) NULL,
  [Address4] [nvarchar](100) NULL,
  [ABN] [nvarchar](100) NULL,
  [FaxNo] [nvarchar](100) NULL,
  [PhoneNo] [nvarchar](100) NULL,
  CONSTRAINT [IX_import debtors] UNIQUE ([SheilaID], [OrigCode], [NewCode])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_NewCode]
  ON [fc].[import debtors] ([NewCode])
  ON [PRIMARY]
GO

CREATE INDEX [IX_OrigCode]
  ON [fc].[import debtors] ([OrigCode])
  ON [PRIMARY]
GO

CREATE INDEX [IX_SheilaID]
  ON [fc].[import debtors] ([SheilaID])
  ON [PRIMARY]
GO