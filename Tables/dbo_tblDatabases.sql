CREATE TABLE [dbo].[tblDatabases] (
  [databaseID] [nvarchar](20) NOT NULL,
  [title] [nvarchar](50) NULL,
  [version] [tinyint] NOT NULL CONSTRAINT [DF_tblDatabases_version] DEFAULT (1),
  [revision] [nvarchar](2) NOT NULL CONSTRAINT [DF_tblDatabases_revision] DEFAULT (0),
  [path] [nvarchar](255) NULL,
  [filename] [nvarchar](50) NULL,
  [isas_parts] [bit] NOT NULL,
  [isas_data] [bit] NOT NULL,
  [lastUpdated] [smalldatetime] NULL,
  [DBID] [int] IDENTITY,
  [dbGroupID] [int] NULL,
  [securityGroup] [nvarchar](50) NULL,
  [EnabledEDI] [bit] NULL CONSTRAINT [DF_tblDatabases_EnabledEDI] DEFAULT (0),
  [AccessDBFormat] [int] NULL,
  CONSTRAINT [PK_tblDatabases] PRIMARY KEY CLUSTERED ([databaseID])
)
ON [PRIMARY]
GO