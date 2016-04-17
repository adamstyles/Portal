CREATE TABLE [qm].[quote_has_module] (
  [quote_ref] [nvarchar](255) NOT NULL,
  [module_name] [nvarchar](195) NOT NULL,
  [qty] [real] NULL CONSTRAINT [DF_quote_has_module_qty] DEFAULT (0),
  [GroupID] [int] NULL CONSTRAINT [DF_quote_has_module_GroupID] DEFAULT (1),
  [material_markup] [real] NULL,
  [CustomModGroup] [nvarchar](255) NULL,
  [PrintOrder] [int] NULL,
  [ExcludeFromTotal] [bit] NULL,
  CONSTRAINT [PK_quote_has_module] PRIMARY KEY CLUSTERED ([quote_ref], [module_name])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_quote_ref]
  ON [qm].[quote_has_module] ([quote_ref])
  ON [PRIMARY]
GO