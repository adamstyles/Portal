CREATE TABLE [cm].[Shipment Off Contract] (
  [Shipment ID] [int] NOT NULL,
  [Stock Code] [nvarchar](15) NULL,
  [Desc] [nvarchar](35) NOT NULL,
  [Int Order No/Inv No] [nvarchar](20) NULL,
  [ISAS Part Code] [nvarchar](30) NULL,
  [Brand] [nvarchar](30) NULL,
  [Supplier] [nvarchar](100) NULL,
  [Part No] [nvarchar](25) NULL,
  [Units] [nvarchar](10) NULL,
  [Unit Sell Price] [money] NULL,
  [Unit Cost Price] [money] NULL,
  [Tax Category] [nvarchar](1) NULL,
  [Unit Tax] [float] NULL,
  [Qty] [real] NOT NULL CONSTRAINT [DF_Shipment Off Contract_Qty] DEFAULT (0),
  [Due Date] [smalldatetime] NULL,
  [Order Item No] [int] NOT NULL,
  [Late Comment ID] [int] NULL,
  [CMItemID] [int] IDENTITY,
  [InvPartID] [int] NULL,
  CONSTRAINT [PK_Shipment Off Contract] PRIMARY KEY CLUSTERED ([CMItemID])
)
ON [PRIMARY]
GO