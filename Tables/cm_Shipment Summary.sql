CREATE TABLE [cm].[Shipment Summary] (
  [Shipment ID] [int] IDENTITY,
  [Shipment No] [int] NULL,
  [Contract ID] [int] NOT NULL,
  [Shipment Order No] [nvarchar](32) NULL,
  [Shipment Date] [smalldatetime] NULL,
  [Stock Control Invoice #] [nvarchar](15) NULL,
  [Entry ID] [tinyint] NULL,
  [IsInvoiced] [bit] NOT NULL CONSTRAINT [DF_Shipment Summary_IsInvoiced] DEFAULT (0),
  [ReqID] [int] NULL,
  CONSTRAINT [PK_Shipment Summary] PRIMARY KEY CLUSTERED ([Shipment ID])
)
ON [PRIMARY]
GO