CREATE TABLE [qm].[job_sheet_modules] (
  [module_name] [nvarchar](195) NOT NULL,
  [job_sheet_ID] [int] NULL,
  [job_sheet_qty] [smallint] NULL,
  [job_mod_ID] [int] IDENTITY,
  CONSTRAINT [PK_job_sheet_modules] PRIMARY KEY CLUSTERED ([job_mod_ID])
)
ON [PRIMARY]
GO