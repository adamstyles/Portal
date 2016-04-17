CREATE TABLE [qm].[quote_summary] (
  [quote_ref] [nvarchar](255) NOT NULL,
  [project] [nvarchar](255) NULL,
  [description] [nvarchar](255) NULL,
  [last_mod_by_user] [nvarchar](30) NULL,
  [date_last_saved] [smalldatetime] NULL,
  [closing_date] [smalldatetime] NULL,
  [material_markup] [real] NULL CONSTRAINT [DF_quote_summary_material_markup] DEFAULT (30),
  [job_no] [nvarchar](15) NULL,
  [material_sheet_no] [int] NULL,
  [material_sheet_date] [smalldatetime] NULL,
  [conforms?] [bit] NOT NULL CONSTRAINT [DF_quote_summary_conforms?] DEFAULT (-1),
  [protected] [bit] NOT NULL CONSTRAINT [DF_quote_summary_protected] DEFAULT (0),
  [archive?] [bit] NOT NULL CONSTRAINT [DF_quote_summary_archive?] DEFAULT (0),
  [tax] [real] NULL CONSTRAINT [DF_quote_summary_tax] DEFAULT (10),
  [report_cat] [nvarchar](15) NULL CONSTRAINT [DF_quote_summary_report_cat] DEFAULT (N'Quote'),
  [complete] [smallint] NULL,
  CONSTRAINT [PK_quote_ref] PRIMARY KEY CLUSTERED ([quote_ref])
)
ON [PRIMARY]
GO