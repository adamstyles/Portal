CREATE TABLE [cm].[database_information] (
  [database_id] [nvarchar](8) NOT NULL,
  [version] [tinyint] NULL,
  [revision] [nvarchar](2) NULL,
  [title] [nvarchar](50) NULL,
  [db path] [nvarchar](500) NULL,
  [pass] [nvarchar](10) NULL,
  [Annual Review Complete ?] [bit] NOT NULL,
  CONSTRAINT [PK_database_information] PRIMARY KEY CLUSTERED ([database_id])
)
ON [PRIMARY]
GO