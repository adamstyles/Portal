CREATE TABLE [fc].[tblPrintTypes] (
  [bytPrintTypeID] [tinyint] IDENTITY,
  [StrPrintType] [nvarchar](50) NOT NULL,
  [strPrintCategory] [nvarchar](50) NULL,
  [ynStores] [bit] NOT NULL,
  CONSTRAINT [PK_bytPrintTypeID] PRIMARY KEY CLUSTERED ([bytPrintTypeID])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_bytPrintTypeID]
  ON [fc].[tblPrintTypes] ([bytPrintTypeID])
  ON [PRIMARY]
GO