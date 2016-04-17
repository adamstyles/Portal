CREATE TABLE [fc].[tblInvoiceParts] (
  [lngInvoiceID] [int] NOT NULL,
  [lngPartOrder] [int] NULL,
  [sngQty] [int] NULL,
  [strDescription] [nvarchar](255) NULL,
  [strStockCode] [nvarchar](50) NULL,
  [curSellPrice] [money] NULL CONSTRAINT [DF_tblInvoiceParts_curSellPrice] DEFAULT (0),
  [sngDiscount] [money] NULL CONSTRAINT [DF_tblInvoiceParts_sngDiscount] DEFAULT (0),
  [strBrand] [nvarchar](50) NULL,
  [strSupplierPartCode] [nvarchar](50) NULL,
  [lngUnitOfMeasure] [int] NULL,
  [curCostPriceLPP] [money] NULL CONSTRAINT [DF_tblInvoiceParts_curCostPriceLPP] DEFAULT (0),
  [strJobNo] [nvarchar](50) NULL,
  [curCreditOrigSell] [money] NULL,
  [ynInventoryItem] [bit] NOT NULL CONSTRAINT [DF_tblInvoiceParts_ynInventoryItem] DEFAULT (0),
  [strGSTCat] [nvarchar](1) NULL,
  [sngGSTRate] [real] NULL,
  [lngPartGroupID] [int] NULL,
  [ynGroupDisc] [bit] NOT NULL CONSTRAINT [DF_tblInvoiceParts_ynGroupDisc] DEFAULT (0),
  [ynClientDisc] [bit] NOT NULL CONSTRAINT [DF_tblInvoiceParts_ynClientDisc] DEFAULT (0),
  [ynNetPrice] [bit] NOT NULL CONSTRAINT [DF_tblInvoiceParts_ynNetPrice] DEFAULT (0),
  [curTotalPrice] [money] NULL,
  [lngPartNoteID] [int] NULL,
  [bytSheilaCodeType] [tinyint] NULL,
  [strISASOrderNo] [nvarchar](35) NULL,
  [invPartID] [int] IDENTITY,
  [CMItemID] [int] NULL,
  [CMUsageItemID] [int] NULL,
  [lngTempPartID] [int] NULL,
  [strReportPartCode] [nvarchar](50) NULL,
  CONSTRAINT [PK_tblInvoiceParts] PRIMARY KEY CLUSTERED ([invPartID])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_lngInvoiceID]
  ON [fc].[tblInvoiceParts] ([lngInvoiceID])
  ON [PRIMARY]
GO

CREATE INDEX [IX_lngPartGroupID]
  ON [fc].[tblInvoiceParts] ([lngPartGroupID])
  ON [PRIMARY]
GO

CREATE INDEX [IX_lngPartNoteID]
  ON [fc].[tblInvoiceParts] ([lngPartNoteID])
  ON [PRIMARY]
GO

CREATE INDEX [IX_strStockCode]
  ON [fc].[tblInvoiceParts] ([strStockCode])
  ON [PRIMARY]
GO

CREATE INDEX [IX_strSupplierPartCode]
  ON [fc].[tblInvoiceParts] ([strSupplierPartCode])
  ON [PRIMARY]
GO