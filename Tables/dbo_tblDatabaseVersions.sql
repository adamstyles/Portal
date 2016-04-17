CREATE TABLE [dbo].[tblDatabaseVersions] (
  [databaseID] [nvarchar](20) NOT NULL,
  [version] [tinyint] NOT NULL CONSTRAINT [DF_tblDatabaseVersionDetails_version] DEFAULT (1),
  [revision] [nvarchar](2) NOT NULL CONSTRAINT [DF_tblDatabaseVersionDetails_revision] DEFAULT (0),
  [AccessDBFormat] [smallint] NOT NULL,
  [lastUpdated] [smalldatetime] NULL,
  [changes] [nvarchar](400) NULL,
  [ReleaseNotes] [nvarchar](254) NULL,
  CONSTRAINT [PK_tblDatabaseVersionDetails] PRIMARY KEY CLUSTERED ([databaseID], [version], [revision], [AccessDBFormat])
)
ON [PRIMARY]
GO