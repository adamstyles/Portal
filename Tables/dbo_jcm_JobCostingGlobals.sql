CREATE TABLE [dbo].[jcm_JobCostingGlobals] (
  [ProjectFilePath] [nvarchar](255) NOT NULL,
  [LooseDocumentsPath] [nvarchar](255) NOT NULL,
  [FolderTemplatePath] [nvarchar](255) NULL,
  [JCTimesheetLockDate] [datetime] NULL,
  [SJFolderTemplatePath] [nvarchar](255) NULL,
  CONSTRAINT [PK_jcm_JobCostingGlobals] PRIMARY KEY CLUSTERED ([ProjectFilePath])
)
ON [PRIMARY]
GO