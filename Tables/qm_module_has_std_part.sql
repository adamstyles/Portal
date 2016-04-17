CREATE TABLE [qm].[module_has_std_part] (
  [module_name] [nvarchar](195) NOT NULL,
  [part_lookup_code] [int] NOT NULL CONSTRAINT [DF_module_has_std_part_part_lookup_code] DEFAULT (0),
  [comment] [nvarchar](255) NULL,
  [price] [money] NOT NULL CONSTRAINT [DF_module_has_std_part_price] DEFAULT (0),
  [disc] [real] NULL CONSTRAINT [DF_module_has_std_part_disc] DEFAULT (0),
  [qty] [real] NULL CONSTRAINT [DF_module_has_std_part_qty] DEFAULT (0),
  [A] [real] NULL CONSTRAINT [DF_module_has_std_part_A] DEFAULT (0),
  [B] [real] NULL CONSTRAINT [DF_module_has_std_part_B] DEFAULT (0),
  [D] [real] NULL CONSTRAINT [DF_module_has_std_part_D] DEFAULT (0),
  [E] [real] NULL CONSTRAINT [DF_module_has_std_part_E] DEFAULT (0),
  [L] [real] NULL CONSTRAINT [DF_module_has_std_part_L] DEFAULT (0),
  [S] [real] NULL CONSTRAINT [DF_module_has_std_part_S] DEFAULT (0),
  [P] [real] NULL CONSTRAINT [DF_module_has_std_part_P] DEFAULT (0),
  [W] [real] NULL CONSTRAINT [DF_module_has_std_part_W] DEFAULT (0),
  [price_altered] [bit] NOT NULL CONSTRAINT [DF_module_has_std_part_price_altered] DEFAULT (0),
  [oldpartid] [int] NULL,
  [mstdpartid] [int] IDENTITY,
  CONSTRAINT [PK_module_has_std_part] PRIMARY KEY CLUSTERED ([mstdpartid])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_module_name]
  ON [qm].[module_has_std_part] ([module_name])
  ON [PRIMARY]
GO

CREATE INDEX [IX_part_lookup_code]
  ON [qm].[module_has_std_part] ([part_lookup_code])
  ON [PRIMARY]
GO