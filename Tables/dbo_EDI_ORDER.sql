CREATE TABLE [dbo].[EDI_ORDER] (
  [AutoID] [int] IDENTITY,
  [SupplierID] [int] NULL,
  [LedgType] [nvarchar](1) NULL,
  [AccNo] [nvarchar](50) NULL,
  [Description] [nvarchar](300) NULL,
  [TranRef] [nvarchar](30) NULL,
  [Del] [smalldatetime] NULL,
  [Qty] [real] NULL,
  [LineAmt] [money] NULL,
  [TaxAmt2] [money] NULL,
  [ISASStockCode] [nvarchar](50) NULL,
  [OrderDate] [smalldatetime] NULL,
  [QtyDelivered] [int] NULL,
  [QtyInvoiced] [int] NULL,
  [LineAmtInvoiced] [money] NULL,
  [UpdatedISAS] [bit] NOT NULL CONSTRAINT [DF_EDI_ORDER_UpdatedISAS] DEFAULT (0),
  [UpdatedVision] [bit] NOT NULL CONSTRAINT [DF_EDI_ORDER_UpdatedVision] DEFAULT (0),
  [OrderAutoID] [int] NULL,
  [PartID] [int] NULL,
  [OnHold] [bit] NOT NULL CONSTRAINT [DF_EDI_ORDER_OnHold] DEFAULT (0),
  [AuditDate] [datetime] NULL,
  [DateUpdated] [datetime] NULL,
  [TimeUpdated] [datetime] NULL,
  [UserNoUpdated] [varchar](50) NULL,
  [EditType] [int] NULL,
  [IsDeleted] [bit] NOT NULL CONSTRAINT [DF_EDI_ORDER_IsDeleted] DEFAULT (0),
  [RecordNo] [int] NULL,
  [SupplierCode] [nvarchar](200) NULL,
  [JobID] [int] NULL,
  [DateEDISent] [datetime] NULL CONSTRAINT [DF_EDI_ORDER_DateEDISent] DEFAULT (getdate()),
  [PaymentMethod] [nvarchar](10) NULL,
  [PartNo] [nvarchar](50) NULL,
  CONSTRAINT [PK_EDI_ORDER] PRIMARY KEY CLUSTERED ([AutoID])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_UPDATED_VISION]
  ON [dbo].[EDI_ORDER] ([UpdatedVision])
  ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE TRIGGER [insertOrder] ON [dbo].[EDI_ORDER] 
FOR INSERT 
AS

update qm.job_sheet_parts
set VisionRecordNo = ins.RecordNo,
DateUpdatedVision = getdate()
from inserted ins, qm.job_sheet_parts jsp
where jsp.jspartsid = ins.OrderAutoID
and updatedvision = 1
and updatedisas = 0

update edi_order
set updatedISAS = 1
from inserted ins, edi_order o
where o.autoid = ins.autoid
GO