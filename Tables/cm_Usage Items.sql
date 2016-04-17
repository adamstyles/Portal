CREATE TABLE [cm].[Usage Items] (
  [Report Month] [smalldatetime] NOT NULL,
  [Contract ID] [int] NOT NULL,
  [Part ID] [int] NOT NULL,
  [Qty] [real] NOT NULL,
  [Unit Sell Price] [money] NOT NULL,
  [Tax Category] [nvarchar](1) NULL,
  [Total Tax] [money] NULL,
  [entered] [smalldatetime] NULL,
  [CMpartid] [int] NULL,
  [CMItemID] [int] IDENTITY,
  [InvPartID] [int] NULL,
  [ReqID] [int] NULL,
  [DocketNo] [int] NULL,
  CONSTRAINT [PK_Usage Items] PRIMARY KEY CLUSTERED ([CMItemID])
)
ON [PRIMARY]
GO