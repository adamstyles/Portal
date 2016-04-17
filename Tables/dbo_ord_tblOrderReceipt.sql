CREATE TABLE [dbo].[ord_tblOrderReceipt] (
  [receiptID] [int] IDENTITY,
  [jspartsID] [int] NULL,
  [invoiceNo] [nvarchar](50) NULL,
  [deliveryDocket] [nvarchar](50) NULL,
  [dateReceived] [smalldatetime] NULL,
  [dateDue] [smalldatetime] NULL,
  [dateExpected] [smalldatetime] NULL,
  [checkedInBy] [nvarchar](20) NULL,
  [note] [nvarchar](250) NULL,
  [qtyReceived] [int] NULL CONSTRAINT [DF_ord_tblOrderReceipt_qtyReceived] DEFAULT (0),
  [qtyInvoiced] [int] NULL CONSTRAINT [DF_ord_tblOrderReceipt_qtyInvoiced] DEFAULT (0),
  [priceCharged] [smallmoney] NULL,
  [deleted] [bit] NOT NULL CONSTRAINT [DF_ord_tblOrderReceipt_deleted] DEFAULT (0),
  CONSTRAINT [PK_ord_tblOrderReceipt] PRIMARY KEY CLUSTERED ([receiptID])
)
ON [PRIMARY]
GO