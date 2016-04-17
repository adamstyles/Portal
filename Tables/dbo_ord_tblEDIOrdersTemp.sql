CREATE TABLE [dbo].[ord_tblEDIOrdersTemp] (
  [supplierID] [nvarchar](50) NULL,
  [ledgType] [nvarchar](50) NULL,
  [accNo] [nvarchar](100) NULL,
  [description] [nvarchar](300) NULL,
  [tranRef] [nvarchar](50) NULL,
  [del] [datetime] NULL,
  [qty] [numeric] NULL,
  [lineAmt] [numeric] NULL,
  [taxAmt2] [numeric] NULL,
  [isasStockCode] [nvarchar](50) NULL,
  [orderDate] [datetime] NULL,
  [qtyDelivered] [numeric] NULL,
  [qtyInvoiced] [numeric] NULL,
  [lineAmtInvoiced] [numeric] NULL,
  [updatedISAS] [bit] NULL CONSTRAINT [DF_ord_tblEDIOrdersTemp_updatedISAS] DEFAULT (1),
  [orderAutoID] [int] NOT NULL,
  [EDIDate] [datetime] NULL,
  [EDI] [bit] NOT NULL CONSTRAINT [DF_ord_tblEDIOrdersTemp_EDI] DEFAULT (0),
  [EditDate] [datetime] NULL,
  [EnterDate] [datetime] NULL,
  CONSTRAINT [PK_ord_tblEDIOrdersTemp] PRIMARY KEY CLUSTERED ([orderAutoID])
)
ON [PRIMARY]
GO