CREATE TABLE [qm].[job_sheet_summary] (
  [job_sheet_ID] [int] IDENTITY,
  [job_sheet_no] [int] NULL,
  [job_no] [nvarchar](15) NULL,
  [job_desc] [nvarchar](120) NULL,
  [delete_by] [smalldatetime] NULL,
  [quote_ref] [nvarchar](50) NULL,
  [job_dept] [nvarchar](2) NULL,
  [modified?] [bit] NOT NULL CONSTRAINT [DF_job_sheet_summary_modified?] DEFAULT (0),
  [deleted] [bit] NOT NULL CONSTRAINT [DF_job_sheet_summary_deleted] DEFAULT (0),
  [immediate] [bit] NOT NULL CONSTRAINT [DF_job_sheet_summary_immediate] DEFAULT (0),
  [old_job_sheet_ID] [int] NULL,
  [dummy_job_no] [bit] NOT NULL CONSTRAINT [DF_job_sheet_summary_dummy_job_no] DEFAULT (0),
  [UpdateDate] [datetime] NULL,
  [UpdateBy] [nvarchar](20) NULL,
  [Comments] [nvarchar](254) NULL,
  CONSTRAINT [PK_job_sheet_summary] PRIMARY KEY CLUSTERED ([job_sheet_ID])
)
ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER OFF

SET ANSI_NULLS ON
GO
CREATE TRIGGER [UpdateJSS] ON [qm].[job_sheet_summary] 
FOR INSERT, UPDATE
AS

UPDATE [qm].[job_sheet_summary] 
set UpdateDate = getdate(), UpdateBy = system_user
from inserted ins,  [qm].[job_sheet_summary] q
where  q.[Job_sheet_ID] = ins.[Job_Sheet_ID]
GO