CREATE TABLE [qm].[module_has_nonstd_part] (
  [module_name] [nvarchar](195) NULL,
  [brand] [nvarchar](255) NULL,
  [cat_no] [nvarchar](50) NULL,
  [description] [nvarchar](255) NULL,
  [secondary_part_code] [nvarchar](25) NULL,
  [comment] [nvarchar](255) NULL,
  [price] [money] NULL CONSTRAINT [DF_module_has_nonstd_part_price] DEFAULT (0),
  [disc] [real] NULL CONSTRAINT [DF_module_has_nonstd_part_disc] DEFAULT (0),
  [qty] [real] NULL CONSTRAINT [DF_module_has_nonstd_part_qty] DEFAULT (0),
  [A] [real] NULL CONSTRAINT [DF_module_has_nonstd_part_A] DEFAULT (0),
  [B] [real] NULL CONSTRAINT [DF_module_has_nonstd_part_B] DEFAULT (0),
  [D] [real] NULL CONSTRAINT [DF_module_has_nonstd_part_D] DEFAULT (0),
  [E] [real] NULL CONSTRAINT [DF_module_has_nonstd_part_E] DEFAULT (0),
  [L] [real] NULL CONSTRAINT [DF_module_has_nonstd_part_L] DEFAULT (0),
  [S] [real] NULL CONSTRAINT [DF_module_has_nonstd_part_S] DEFAULT (0),
  [P] [real] NULL CONSTRAINT [DF_module_has_nonstd_part_P] DEFAULT (0),
  [W] [real] NULL CONSTRAINT [DF_module_has_nonstd_part_W] DEFAULT (0),
  [mNStdPartID] [int] IDENTITY,
  CONSTRAINT [PK_module_has_nonstd_part] PRIMARY KEY CLUSTERED ([mNStdPartID])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_module_name]
  ON [qm].[module_has_nonstd_part] ([module_name])
  ON [PRIMARY]
GO