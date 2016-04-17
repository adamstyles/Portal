CREATE TABLE [dbo].[tblFreightMasterConfiguration] (
  [Location] [nvarchar](50) NOT NULL,
  [SourceMDBPath] [nvarchar](255) NOT NULL,
  [boolActive] [bit] NOT NULL,
  CONSTRAINT [PK_tblFreightMasterConfiguration] PRIMARY KEY CLUSTERED ([Location])
)
ON [PRIMARY]
GO