CREATE TABLE [dbo].[tblDatabase] (
  [DatabaseID] [int] IDENTITY,
  [DatabaseName] [nvarchar](50) NULL,
  [FileName] [nvarchar](50) NULL,
  [FilePath] [nvarchar](255) NULL,
  [BackEnd] [nvarchar](50) NULL,
  [LinkedToSQL] [bit] NOT NULL CONSTRAINT [DF_tblDatabase_LinkedToSQL] DEFAULT (0),
  [Notes] [nvarchar](255) NULL,
  [Area] [nvarchar](2) NULL,
  CONSTRAINT [PK_tblDatabase] PRIMARY KEY CLUSTERED ([DatabaseID])
)
ON [PRIMARY]
GO