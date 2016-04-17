CREATE TABLE [fc].[tblSharedGlobal] (
  [DefaultImportPath] [nvarchar](255) NOT NULL,
  [DefaultExportPath] [nvarchar](255) NOT NULL,
  [ImportSeqNo] [smallint] NOT NULL,
  [Password] [nvarchar](50) NULL,
  [UserMgtPassword] [nvarchar](50) NULL,
  [JCTimesheetPassword] [nvarchar](50) NULL,
  [OrderingDeliveryCC] [nvarchar](50) NULL,
  [FCReport] [nvarchar](50) NULL,
  [FCAdmin] [nvarchar](50) NULL,
  CONSTRAINT [PK_tblSharedGlobal] PRIMARY KEY CLUSTERED ([DefaultImportPath])
)
ON [PRIMARY]
GO