CREATE TABLE [qm].[module_addl_labour_default_desc] (
  [description] [nvarchar](255) NOT NULL,
  [labour_category] [nvarchar](30) NULL,
  CONSTRAINT [IX_description] UNIQUE ([description])
)
ON [PRIMARY]
GO