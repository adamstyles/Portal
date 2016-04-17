CREATE TABLE [dbo].[jcm_JobSummary] (
  [Job ID] [int] IDENTITY,
  [Job No] [nvarchar](16) NULL,
  [Job Description] [nvarchar](255) NULL,
  [Job Location] [nvarchar](2) NULL,
  [act Mat&Sund&Lab$] [money] NULL CONSTRAINT [DF_jcm_JobSummary_act Mat&Sund&Lab$] DEFAULT (0),
  [act Labour$] [money] NULL CONSTRAINT [DF_jcm_JobSummary_act Labour$] DEFAULT (0),
  [Invoiced] [bit] NOT NULL CONSTRAINT [DF_jcm_JobSummary_Invoiced] DEFAULT (0),
  [Under/Over Date] [smalldatetime] NULL,
  [On Hold] [bit] NOT NULL CONSTRAINT [DF_jcm_JobSummary_On Hold] DEFAULT (0),
  [Cost Plus] [bit] NOT NULL CONSTRAINT [DF_jcm_JobSummary_Cost Plus] DEFAULT (0),
  [Display Eng Prod] [bit] NOT NULL CONSTRAINT [DF_jcm_JobSummary_Display Eng Prod] DEFAULT (0),
  [Display Sw Prod] [bit] NOT NULL CONSTRAINT [DF_jcm_JobSummary_Display Sw Prod] DEFAULT (0),
  [SSS Job] [bit] NOT NULL CONSTRAINT [DF_jcm_JobSummary_SSS Job] DEFAULT (0),
  [R&D Job] [bit] NOT NULL CONSTRAINT [DF_jcm_JobSummary_R&D Job] DEFAULT (0),
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_jcm_JobSummary_Deleted] DEFAULT (0),
  [Last Modified] [smalldatetime] NULL CONSTRAINT [DF_jcm_JobSummary_Last Modified] DEFAULT (getdate()),
  [Archive] [bit] NOT NULL CONSTRAINT [DF_jcm_JobSummary_Archive] DEFAULT (0),
  [ProjectFilePath] [nvarchar](255) NULL,
  [AuditCreatedBy] [nvarchar](50) NULL CONSTRAINT [DF_jcm_JobSummary_AuditCreatedBy] DEFAULT (suser_sname()),
  [AuditCreated] [datetime] NULL CONSTRAINT [DF_jcm_JobSummary_AuditCreated] DEFAULT (getdate()),
  [AuditUpdatedBy] [nvarchar](50) NULL CONSTRAINT [DF_jcm_JobSummary_AuditUpdatedBy] DEFAULT (suser_sname()),
  [AuditUpdated] [datetime] NULL CONSTRAINT [DF_jcm_JobSummary_AuditUpdated] DEFAULT (getdate()),
  [VisionID] [nvarchar](11) NULL,
  [DateUpdatedISAS] [datetime] NULL,
  [DateUpdatedVision] [datetime] NULL,
  [SundryTransferred] [money] NULL,
  [DateSundryTransferred] [datetime] NULL,
  CONSTRAINT [PK_jcm_JobSummary] PRIMARY KEY CLUSTERED ([Job ID])
)
ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE TRIGGER [trgDELETEJob] ON [dbo].[jcm_JobSummary] 
FOR DELETE
AS
INSERT INTO jcm_tblJobSummaryAudit
                      (AuditUser, AuditDate, AuditOperation, [Job ID], [OLDJob No], [OLDJob Description], [OLDJob Location], [OLDact Mat&Sund&Lab$], [OLDact Labour$], 
                      OLDInvoiced, [OLDUnder/Over Date], [OLDOn Hold], [OLDCost Plus], [OLDDisplay Eng Prod], [OLDDisplay Sw Prod], [OLDSSS Job], [OLDR&D Job], 
                      OLDDeleted, [OLDLast Modified], OLDArchive, OLDProjectFilePath)
SELECT     SYSTEM_USER AS Expr1, GETDATE() AS Expr2, 'DELETE' AS Expr3, [Job ID], [Job No], [Job Description], [Job Location], [act Mat&Sund&Lab$], 
                      [act Labour$], Invoiced, [Under/Over Date], [On Hold], [Cost Plus], [Display Sw Prod], [Display Eng Prod], [SSS Job], [R&D Job], Deleted, [Last Modified], 
                      Archive, ProjectFilePath
FROM         deleted
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE TRIGGER [trgINSERTJob] ON [dbo].[jcm_JobSummary] 
FOR INSERT
AS
INSERT INTO jcm_tblJobSummaryAudit
                      (AuditUser, AuditDate, AuditOperation, [Job ID], [Job No], [Job Description], [Job Location], [act Mat&Sund&Lab$], [act Labour$], Invoiced, 
                      [Under/Over Date], [On Hold], [Cost Plus], [Display Sw Prod], [Display Eng Prod], [SSS Job], [R&D Job], Deleted, [Last Modified], Archive, 
                      ProjectFilePath)
SELECT     SYSTEM_USER AS Expr1, GETDATE() AS Expr2, 'INSERT' AS Expr3, [Job ID], [Job No], [Job Description], [Job Location], [act Mat&Sund&Lab$], 
                      [act Labour$], Invoiced, [Under/Over Date], [On Hold], [Cost Plus], [Display Sw Prod], [Display Eng Prod], [SSS Job], [R&D Job], Deleted, [Last Modified], 
                      Archive, ProjectFilePath
FROM         inserted
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE TRIGGER [trgUPDATEJobSum] ON [dbo].[jcm_JobSummary] 
FOR UPDATE
AS
Update  [dbo].[jcm_JobSummary] set [auditupdated] = getdate(), [auditupdatedby] = system_user
from [dbo].[jcm_JobSummary], inserted
where  [dbo].[jcm_JobSummary].[job id] = inserted.[job id]
INSERT INTO jcm_tblJobSummaryAudit
                      (AuditUser, AuditDate, AuditOperation, [Job ID], [Job No], [Job Description], [Job Location], [act Mat&Sund&Lab$], [act Labour$], Invoiced, 
                      [Under/Over Date], [On Hold], [Cost Plus], [Display Eng Prod], [Display Sw Prod], [SSS Job], [R&D Job], Deleted, [Last Modified], Archive, 
                      ProjectFilePath, [OLDJob No], [OLDJob Description], [OLDJob Location], [OLDact Mat&Sund&Lab$], [OLDact Labour$], OLDInvoiced, 
                      [OLDUnder/Over Date], [OLDOn Hold], [OLDCost Plus], [OLDDisplay Eng Prod], [OLDDisplay Sw Prod], [OLDSSS Job], [OLDR&D Job], OLDDeleted, 
                      [OLDLast Modified], OLDArchive, OLDProjectFilePath)
SELECT     SYSTEM_USER AS Expr1, GETDATE() AS Expr2, 'UPDATE' AS Expr3, ins.[Job ID], ins.[Job No], ins.[Job Description], ins.[Job Location], 
                      ins.[act Mat&Sund&Lab$], ins.[act Labour$], ins.Invoiced, ins.[Under/Over Date], ins.[On Hold], ins.[Cost Plus], ins.[Display Eng Prod], 
                      ins.[Display Sw Prod], ins.[SSS Job], ins.[R&D Job], ins.Deleted, ins.[Last Modified], ins.Archive, ins.ProjectFilePath, del.[Job No] AS Expr4, 
                      del.[Job Description] AS Expr5, del.[Job Location] AS Expr6, del.[act Mat&Sund&Lab$] AS Expr16, del.[act Labour$] AS Expr17, del.Invoiced AS Expr18, 
                      del.[Under/Over Date] AS Expr19, del.[On Hold] AS Expr20, del.[Cost Plus] AS Expr21, del.[Display Eng Prod] AS Expr22, 
                      del.[Display Sw Prod] AS Expr23, del.[SSS Job] AS Expr24, del.[R&D Job] AS Expr26, del.Deleted AS Expr27, del.[Last Modified] AS Expr28, 
                      del.Archive AS Expr29, del.ProjectFilePath AS Expr30
FROM         inserted ins CROSS JOIN
                      deleted del
GO