CREATE TABLE [dbo].[tblSupportRefs] (
  [JobID] [int] NOT NULL,
  [SupportRefID] [int] IDENTITY,
  [FileName] [nvarchar](100) NULL,
  [Summary] [nvarchar](50) NULL,
  [Ref] [nvarchar](50) NULL,
  CONSTRAINT [PK_tblSupportRefs] PRIMARY KEY CLUSTERED ([SupportRefID])
)
ON [PRIMARY]
GO