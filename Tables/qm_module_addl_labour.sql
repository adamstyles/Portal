CREATE TABLE [qm].[module_addl_labour] (
  [module_name] [nvarchar](195) NOT NULL,
  [description] [nvarchar](255) NOT NULL,
  [comment] [nvarchar](255) NULL,
  [labour_category] [nvarchar](30) NULL,
  [hours] [real] NULL,
  CONSTRAINT [PK_module_addl_labour] PRIMARY KEY CLUSTERED ([module_name], [description])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_module_addl_labour]
  ON [qm].[module_addl_labour] ([module_name])
  ON [PRIMARY]
GO