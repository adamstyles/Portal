CREATE TABLE [dbo].[tblSCNShipmentItems] (
  [SCNShipmentItemID] [int] IDENTITY,
  [DateEntered] [datetime] NOT NULL,
  [SCNShipmentID] [int] NOT NULL,
  [PartID] [int] NOT NULL,
  [SupplierPartCode] [char](50) NOT NULL,
  [OrderNo] [nvarchar](50) NOT NULL,
  [Description] [nvarchar](128) NOT NULL,
  [BookTo] [nvarchar](50) NOT NULL,
  [UoM] [nvarchar](50) NOT NULL,
  [QtyOrdered] [int] NOT NULL,
  [QtyDelivered] [int] NOT NULL,
  [QtyDue] [int] NOT NULL,
  [QtyReceived] [int] NOT NULL CONSTRAINT [DF_tblSCNShipmentItems_QtyReceived] DEFAULT (0),
  [UserID] [nvarchar](10) NOT NULL,
  [JSPartID] [int] NOT NULL,
  [ReceiptID] [int] NOT NULL,
  [QtyReceivedSite] [int] NULL,
  CONSTRAINT [PK_tblSCNShipmentItems] PRIMARY KEY CLUSTERED ([SCNShipmentItemID])
)
ON [PRIMARY]
GO