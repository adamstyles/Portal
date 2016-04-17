CREATE TABLE [cm].[Part Comments] (
  [Contract ID] [int] NOT NULL,
  [Part ID] [int] NOT NULL,
  [Date] [smalldatetime] NOT NULL,
  [Comment] [nvarchar](100) NOT NULL,
  [CMpartid] [int] NULL,
  CONSTRAINT [PK_Part Comments] PRIMARY KEY CLUSTERED ([Contract ID], [Part ID], [Date])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_Part Comments]
  ON [cm].[Part Comments] ([Contract ID])
  ON [PRIMARY]
GO