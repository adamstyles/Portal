CREATE TABLE [dbo].[MODULE_LABOUR_SETUP_DEFAULT_N] (
  [title] [nvarchar](255) NOT NULL,
  [hourly_rate] [money] NULL CONSTRAINT [DF_module_labour_setup_defaults_hourly_rate] DEFAULT (0),
  [A%] [real] NULL CONSTRAINT [DF_module_labour_setup_defaults_A%] DEFAULT (0),
  [E%] [real] NULL CONSTRAINT [DF_module_labour_setup_defaults_E%] DEFAULT (0),
  [B%] [real] NULL CONSTRAINT [DF_module_labour_setup_defaults_B%] DEFAULT (0),
  [L%] [real] NULL CONSTRAINT [DF_module_labour_setup_defaults_L%] DEFAULT (0),
  [D%] [real] NULL CONSTRAINT [DF_module_labour_setup_defaults_D%] DEFAULT (0),
  [W%] [real] NULL CONSTRAINT [DF_module_labour_setup_defaults_W%] DEFAULT (0),
  [S%] [real] NULL CONSTRAINT [DF_module_labour_setup_defaults_S%] DEFAULT (0),
  [P%] [real] NULL CONSTRAINT [DF_module_labour_setup_defaults_P%] DEFAULT (0),
  [commissioning%] [real] NULL CONSTRAINT [DF_module_labour_setup_defaults_commissioning%] DEFAULT (0),
  [documentation%] [real] NULL CONSTRAINT [DF_module_labour_setup_defaults_documentation%] DEFAULT (0),
  [installation%] [real] NULL CONSTRAINT [DF_module_labour_setup_defaults_installation%] DEFAULT (0),
  [programming%] [real] NULL CONSTRAINT [DF_module_labour_setup_defaults_programming%] DEFAULT (0),
  [warranty%] [real] NULL CONSTRAINT [DF_module_labour_setup_defaults_warranty%] DEFAULT (0),
  [design%] [real] NULL CONSTRAINT [DF_module_labour_setup_defaults_design%] DEFAULT (0),
  [supervision%] [real] NULL CONSTRAINT [DF_module_labour_setup_defaults_supervision%] DEFAULT (0),
  [testing%] [real] NULL CONSTRAINT [DF_module_labour_setup_defaults_testing%] DEFAULT (0),
  CONSTRAINT [PK_module_labour_setup_defaults] PRIMARY KEY CLUSTERED ([title]),
  CONSTRAINT [IX_title] UNIQUE ([title])
)
ON [PRIMARY]
GO