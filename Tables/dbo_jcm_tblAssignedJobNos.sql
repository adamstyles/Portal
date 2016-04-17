CREATE TABLE [dbo].[jcm_tblAssignedJobNos] (
  [AuditID] [int] IDENTITY,
  [Job ID] [int] NOT NULL,
  [Job No] [nvarchar](10) NOT NULL,
  [Job Description] [nvarchar](130) NULL,
  [Var No] [int] NULL,
  [Var Date] [smalldatetime] NULL,
  [Var Description] [nvarchar](100) NULL,
  [Var Comment] [nvarchar](200) NULL,
  [AuditCreatedBy] [nvarchar](50) NULL CONSTRAINT [DF_tblAssignedJobNos_AuditCreatedBy] DEFAULT (suser_sname()),
  [AuditCreated] [datetime] NULL CONSTRAINT [DF_tblAssignedJobNos_AuditCreated] DEFAULT (getdate()),
  [originator] [nvarchar](50) NULL CONSTRAINT [DF_tblAssignedJobNos_originator] DEFAULT (suser_sname()),
  CONSTRAINT [PK_tblAssignedJobNos] PRIMARY KEY CLUSTERED ([AuditID])
)
ON [PRIMARY]
GO