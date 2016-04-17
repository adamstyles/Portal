CREATE TABLE [cm].[Shipment Items] (
  [Shipment ID] [int] NOT NULL,
  [Part ID] [int] NOT NULL,
  [Order Item No] [int] NOT NULL CONSTRAINT [DF_Shipment Items_Order Item No] DEFAULT (0),
  [Qty] [real] NULL,
  [Unit Sell Price] [money] NULL,
  [Tax Category] [nvarchar](1) NULL,
  [Unit Tax] [float] NULL,
  [Due Date] [smalldatetime] NULL,
  [Late Comment ID] [int] NULL,
  [CMpartid] [int] NULL,
  [ItemID] [int] IDENTITY,
  [InvPartID] [int] NULL,
  [OrderNo] [nvarchar](20) NULL,
  CONSTRAINT [PK_Shipment Items] PRIMARY KEY CLUSTERED ([ItemID])
)
ON [PRIMARY]
GO