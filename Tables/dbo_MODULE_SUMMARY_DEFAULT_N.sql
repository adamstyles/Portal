CREATE TABLE [dbo].[MODULE_SUMMARY_DEFAULT_N] (
  [freight] [money] NOT NULL CONSTRAINT [DF_module_summary_default_freight] DEFAULT (0),
  [sundry] [money] NOT NULL CONSTRAINT [DF_module_summary_default_sundry] DEFAULT (0),
  CONSTRAINT [PK_MODULE_SUMMARY_DEFAULT_N] PRIMARY KEY CLUSTERED ([freight], [sundry]),
  CONSTRAINT [IX_module_summary_default] UNIQUE ([freight], [sundry])
)
ON [PRIMARY]
GO