CREATE TABLE [cm].[Adjustments] (
  [Adj Date] [smalldatetime] NOT NULL,
  [Contract ID] [int] NOT NULL,
  [Part ID] [int] NOT NULL,
  [Qty] [real] NULL,
  [Unit Cost Price] [money] NULL,
  [Unit Sell Price] [money] NULL,
  [Tax Category] [nvarchar](1) NULL,
  [Unit Tax] [money] NULL,
  [Reason] [nvarchar](80) NULL,
  [Adj Type] [nvarchar](1) NULL,
  [CMpartid] [int] NULL,
  CONSTRAINT [PK_Adjustments] PRIMARY KEY CLUSTERED ([Adj Date], [Contract ID], [Part ID])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_Adjustments_1]
  ON [cm].[Adjustments] ([Contract ID])
  ON [PRIMARY]
GO

CREATE INDEX [IX_Adjustments_2]
  ON [cm].[Adjustments] ([Part ID])
  ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'CM', 'SCHEMA', N'cm', 'TABLE', N'Adjustments'
GO