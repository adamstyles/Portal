CREATE TABLE [dbo].[EDI_INVOICE] (
  [AutoID] [int] IDENTITY,
  [InvoiceNo] [nvarchar](50) NOT NULL,
  [OrderNo] [nvarchar](50) NULL,
  [SalesmanNo] [nvarchar](50) NULL,
  [DeptNo] [nvarchar](50) NULL,
  [BranchNo] [nvarchar](50) NULL,
  [InvoiceDate] [smalldatetime] NULL CONSTRAINT [DF_EDI_INVOICE_InvoiceDate] DEFAULT (getdate()),
  [SheilaDebtorCode] [nvarchar](25) NULL,
  [IsInvoice] [bit] NOT NULL CONSTRAINT [DF_EDI_INVOICE_IsInvoice] DEFAULT (0),
  [RefCode] [nvarchar](50) NULL,
  [Qty] [int] NULL,
  [CostPrice] [money] NULL,
  [GSTCat] [nvarchar](1) NULL,
  [TotalPriceEx] [money] NULL,
  [GST] [money] NULL,
  [LineType] [nvarchar](50) NULL,
  [Description] [nvarchar](255) NULL,
  [JobNo] [nvarchar](50) NULL,
  [UpdatedISAS] [bit] NOT NULL CONSTRAINT [DF_EDI_INVOICE_UpdatedISAS] DEFAULT (0),
  [UpdatedVision] [bit] NOT NULL CONSTRAINT [DF_EDI_INVOICE_UpdatedISAS1] DEFAULT (0),
  [UpdatedService] [bit] NOT NULL CONSTRAINT [DF_EDI_INVOICE_UpdatedVision1] DEFAULT (0),
  [PartID] [int] NULL,
  [CustomerID] [int] NULL,
  [JobID] [int] NULL,
  CONSTRAINT [PK_EDI_INVOICE] PRIMARY KEY CLUSTERED ([AutoID])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_UPDATED_VISION]
  ON [dbo].[EDI_INVOICE] ([UpdatedVision])
  ON [PRIMARY]
GO