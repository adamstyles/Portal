CREATE TABLE [qm].[MODULE_LABOUR_SETUP] (
  [module_name] [nvarchar](195) NOT NULL,
  [title] [nvarchar](255) NOT NULL,
  [hourly_rate] [money] NULL CONSTRAINT [DF_module_labour_setup_hourly_rate] DEFAULT (0),
  [A%] [real] NULL CONSTRAINT [DF_module_labour_setup_A%] DEFAULT (0),
  [E%] [real] NULL CONSTRAINT [DF_module_labour_setup_E%] DEFAULT (0),
  [B%] [real] NULL CONSTRAINT [DF_module_labour_setup_B%] DEFAULT (0),
  [L%] [real] NULL CONSTRAINT [DF_module_labour_setup_L%] DEFAULT (0),
  [D%] [real] NULL CONSTRAINT [DF_module_labour_setup_D%] DEFAULT (0),
  [W%] [real] NULL CONSTRAINT [DF_module_labour_setup_W%] DEFAULT (0),
  [S%] [real] NULL CONSTRAINT [DF_module_labour_setup_S%] DEFAULT (0),
  [P%] [real] NULL CONSTRAINT [DF_module_labour_setup_P%] DEFAULT (0),
  [commissioning%] [real] NULL CONSTRAINT [DF_module_labour_setup_commissioning%] DEFAULT (0),
  [documentation%] [real] NULL CONSTRAINT [DF_module_labour_setup_documentation%] DEFAULT (0),
  [installation%] [real] NULL CONSTRAINT [DF_module_labour_setup_installation%] DEFAULT (0),
  [programming%] [real] NULL CONSTRAINT [DF_module_labour_setup_programming%] DEFAULT (0),
  [warranty%] [real] NULL CONSTRAINT [DF_module_labour_setup_warranty%] DEFAULT (0),
  [design%] [real] NULL CONSTRAINT [DF_module_labour_setup_design%] DEFAULT (0),
  [supervision%] [real] NULL CONSTRAINT [DF_module_labour_setup_supervision%] DEFAULT (0),
  [testing%] [real] NULL CONSTRAINT [DF_module_labour_setup_testing%] DEFAULT (0),
  CONSTRAINT [PK_MODULE_LABOUR_SETUP] PRIMARY KEY CLUSTERED ([module_name], [title])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_MODULE_LABOUR_SETUP]
  ON [qm].[MODULE_LABOUR_SETUP] ([module_name])
  ON [PRIMARY]
GO