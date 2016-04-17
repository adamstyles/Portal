CREATE TABLE [dbo].[jcm_tblAssignedSmallJobNos] (
  [AuditID] [int] IDENTITY,
  [Job ID] [int] NOT NULL,
  [Job No] [nvarchar](10) NOT NULL,
  [Job Description] [nvarchar](130) NULL,
  [Var No] [int] NULL CONSTRAINT [DF_jcm_tblAssignedSmallJobNos_Var No] DEFAULT (0),
  [Var Date] [smalldatetime] NULL,
  [Var Description] [nvarchar](100) NULL,
  [Var Comment] [nvarchar](200) NULL,
  [AuditCreatedBy] [nvarchar](50) NULL CONSTRAINT [DF_jcm_tblAssignedSmallJobNos_AuditCreatedBy] DEFAULT (suser_sname()),
  [AuditCreated] [datetime] NULL CONSTRAINT [DF_jcm_tblAssignedSmallJobNos_AuditCreated] DEFAULT (getdate()),
  [originator] [nvarchar](50) NULL CONSTRAINT [DF_jcm_tblAssignedSmallJobNos_originator] DEFAULT (suser_sname()),
  [JobNo] [numeric] NULL,
  CONSTRAINT [PK_jcm_tblAssignedSmallJobNos] PRIMARY KEY CLUSTERED ([AuditID])
)
ON [PRIMARY]
GO