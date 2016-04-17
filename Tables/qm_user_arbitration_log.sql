CREATE TABLE [qm].[user_arbitration_log] (
  [user_name] [nvarchar](30) NOT NULL,
  [rec_type] [nvarchar](10) NULL,
  [argument] [nvarchar](255) NULL,
  [time_stamp] [nvarchar](25) NULL,
  [UID] [int] IDENTITY,
  CONSTRAINT [PK_user_arbitration_log] PRIMARY KEY CLUSTERED ([UID])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_user_name]
  ON [qm].[user_arbitration_log] ([user_name])
  ON [PRIMARY]
GO