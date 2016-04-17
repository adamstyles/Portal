CREATE TABLE [dbo].[EDI_JOB] (
  [AutoID] [int] IDENTITY,
  [Job ID] [int] NOT NULL,
  [Job No] [nvarchar](16) NULL,
  [Job Description] [nvarchar](130) NULL,
  [Job Location] [nvarchar](2) NOT NULL,
  [Invoiced] [bit] NULL CONSTRAINT [DF_EDI_JOB_Invoiced] DEFAULT (0),
  [Under/Over Date] [smalldatetime] NULL,
  [On Hold] [bit] NULL CONSTRAINT [DF_EDI_JOB_On Hold] DEFAULT (0),
  [Cost Plus] [bit] NULL CONSTRAINT [DF_EDI_JOB_Cost Plus] DEFAULT (0),
  [Display Eng Prod] [bit] NULL CONSTRAINT [DF_EDI_JOB_Display Eng Prod] DEFAULT (0),
  [Display Sw Prod] [bit] NULL CONSTRAINT [DF_EDI_JOB_Display Sw Prod] DEFAULT (0),
  [SSS Job] [bit] NULL CONSTRAINT [DF_EDI_JOB_SSS Job] DEFAULT (0),
  [R&D Job] [bit] NULL CONSTRAINT [DF_EDI_JOB_R&D Job] DEFAULT (0),
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_EDI_JOB_Deleted] DEFAULT (0),
  [Last Modified] [smalldatetime] NULL CONSTRAINT [DF_EDI_JOB_Last Modified] DEFAULT (getdate()),
  [Archive] [bit] NOT NULL CONSTRAINT [DF_EDI_JOB_Archive] DEFAULT (0),
  [ProjectFilePath] [nvarchar](255) NULL,
  [AuditCreatedBy] [nvarchar](50) NULL CONSTRAINT [DF_EDI_JOB_AuditCreatedBy] DEFAULT (suser_sname()),
  [AuditCreated] [datetime] NULL CONSTRAINT [DF_EDI_JOB_AuditCreated] DEFAULT (getdate()),
  [AuditUpdatedBy] [nvarchar](50) NULL CONSTRAINT [DF_EDI_JOB_AuditUpdatedBy] DEFAULT (suser_sname()),
  [AuditUpdated] [datetime] NULL CONSTRAINT [DF_EDI_JOB_AuditUpdated] DEFAULT (getdate()),
  [UpdatedVision] [bit] NOT NULL CONSTRAINT [DF_EDI_JOB_UpdatedVision] DEFAULT (0),
  [UpdatedISAS] [bit] NOT NULL CONSTRAINT [DF_EDI_JOB_UpdatedISAS] DEFAULT (0),
  [CustomerName] [nvarchar](50) NULL,
  [CustomerCode] [nvarchar](20) NULL,
  [OrderNo] [nvarchar](20) NULL,
  [QuoteValue] [money] NULL CONSTRAINT [DF_EDI_JOB_QuoteValue] DEFAULT (0),
  [QuoteCost] [money] NULL CONSTRAINT [DF_EDI_JOB_QuoteCost] DEFAULT (0),
  [ContractValue] [money] NULL CONSTRAINT [DF_EDI_JOB_ContractValue] DEFAULT (0),
  [UniqueID] [nvarchar](50) NULL,
  [StartDate] [datetime] NULL,
  [JobToDateCost] [money] NULL,
  [EstHours] [real] NULL,
  [ActualHours] [real] NULL,
  [DeliveryDate] [datetime] NULL,
  [CustomerID] [int] NULL,
  [act Mat&Sund&Lab$] [money] NULL,
  [act Labour$] [money] NULL,
  [ProdHours] [real] NULL CONSTRAINT [DF_EDI_JOB_ProdHours] DEFAULT (0),
  [NonProdHours] [real] NULL CONSTRAINT [DF_EDI_JOB_NonProdHours] DEFAULT (0),
  [EstProdHours] [real] NULL CONSTRAINT [DF_EDI_JOB_EstProdHours] DEFAULT (0),
  [EstNonProdHours] [real] NULL CONSTRAINT [DF_EDI_JOB_EstNonProdHours] DEFAULT (0),
  [dtEDIDate] [datetime] NULL CONSTRAINT [DF_EDI_JOB_dtEDIDate] DEFAULT (getdate()),
  CONSTRAINT [PK_EDI_JOB] PRIMARY KEY CLUSTERED ([AutoID])
)
ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE TRIGGER [insertJob] ON [dbo].[EDI_JOB] 
FOR INSERT 
AS

update dbo.jcm_JobSummary
set visionID = ins.uniqueID,
DateUpdatedVision = getdate()
from inserted ins, dbo.jcm_JobSummary j
where j.[job id] = ins.[job id]
and updatedvision = 1
and updatedisas = 0

update edi_job
set updatedISAS = 1
from inserted ins, edi_job j
where j.autoid = ins.autoid
GO