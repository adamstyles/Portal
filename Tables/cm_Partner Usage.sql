CREATE TABLE [cm].[Partner Usage] (
  [Contract ID] [int] NOT NULL,
  [Part ID] [int] NOT NULL,
  [Date] [smalldatetime] NOT NULL,
  [Usage] [int] NULL,
  [CMpartid] [int] NULL,
  CONSTRAINT [PK_Partner Usage] PRIMARY KEY CLUSTERED ([Contract ID], [Part ID], [Date])
)
ON [PRIMARY]
GO