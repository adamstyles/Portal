CREATE TABLE [cm].[Part Price History] (
  [Contract ID] [int] NOT NULL,
  [Part ID] [int] NOT NULL,
  [Date] [smalldatetime] NOT NULL CONSTRAINT [DF_Part Price History_Date] DEFAULT (getdate()),
  [Brand] [nvarchar](50) NULL,
  [Supplier] [nvarchar](100) NULL,
  [Part No] [nvarchar](20) NULL,
  [Cost] [money] NULL CONSTRAINT [DF_Part Price History_Cost] DEFAULT (0),
  [Margin] [real] NULL CONSTRAINT [DF_Part Price History_Margin] DEFAULT (0),
  [Current Sell] [money] NULL CONSTRAINT [DF_Part Price History_Current Sell] DEFAULT (0),
  [CMpartid] [int] NULL,
  [HistoryID] [int] IDENTITY,
  CONSTRAINT [PK_Part Price History] PRIMARY KEY CLUSTERED ([HistoryID])
)
ON [PRIMARY]
GO