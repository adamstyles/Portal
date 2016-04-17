CREATE TABLE [dbo].[ord_tblEDIOrders] (
  [OrderNo] [nvarchar](50) NOT NULL,
  [SendToEDI] [bit] NOT NULL CONSTRAINT [DF_ord_tblEDIOrders_SendToEDI] DEFAULT (0),
  [EDIDate] [datetime] NULL,
  [Supplier] [nvarchar](200) NULL,
  [VisionCreditorCode] [nvarchar](50) NULL,
  [OrderDate] [smalldatetime] NULL,
  CONSTRAINT [PK_ord_tblEDIOrders] PRIMARY KEY CLUSTERED ([OrderNo])
)
ON [PRIMARY]
GO