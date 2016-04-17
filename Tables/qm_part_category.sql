CREATE TABLE [qm].[part_category] (
  [category_lookup_code] [smallint] IDENTITY,
  [category_name] [nvarchar](50) NULL,
  CONSTRAINT [PK_part_category] PRIMARY KEY CLUSTERED ([category_lookup_code])
)
ON [PRIMARY]
GO