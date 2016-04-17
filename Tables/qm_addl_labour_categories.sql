CREATE TABLE [qm].[addl_labour_categories] (
  [labour_category] [nvarchar](30) NOT NULL,
  [dept] [nchar](2) NULL,
  CONSTRAINT [PK_labour_category] PRIMARY KEY CLUSTERED ([labour_category])
)
ON [PRIMARY]
GO