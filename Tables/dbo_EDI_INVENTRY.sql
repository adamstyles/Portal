CREATE TABLE [dbo].[EDI_INVENTRY] (
  [AutoID] [int] IDENTITY,
  [ISASStockCode] [nvarchar](50) NULL,
  [Description] [nvarchar](255) NULL,
  [SupplierBarcode] [nvarchar](50) NULL,
  [SupplierPartCode] [nvarchar](50) NULL,
  [IsObs] [bit] NOT NULL CONSTRAINT [DF_EDI_INVENTRY_IsObs] DEFAULT (0),
  [LastCost] [smallmoney] NULL CONSTRAINT [DF_EDI_INVENTRY_LastCost] DEFAULT (0),
  [SellPrice] [money] NULL CONSTRAINT [DF_EDI_INVENTRY_SellPrice] DEFAULT (0),
  [NetPrice1] [smallmoney] NULL,
  [NetPrice2] [smallmoney] NULL,
  [NetPrice3] [smallmoney] NULL,
  [CostPriceLPP] [money] NULL CONSTRAINT [DF_EDI_INVENTRY_CostPriceLPP] DEFAULT (0),
  [TaxCat] [nvarchar](1) NULL,
  [Comment] [nvarchar](255) NULL,
  [UpdatedISAS] [bit] NOT NULL CONSTRAINT [DF_EDI_INVENTRY_UpdatedISAS] DEFAULT (0),
  [UpdatedVision] [bit] NOT NULL CONSTRAINT [DF_EDI_INVENTRY_UpdatedVision] DEFAULT (0),
  [PartID] [int] NOT NULL,
  [GroupNo] [nvarchar](50) NULL,
  [UniqueID] [nvarchar](50) NULL,
  [AvgCost] [money] NULL,
  [BIN_Name] [nvarchar](8) NULL,
  [dtEDIDate] [datetime] NULL CONSTRAINT [DF_EDI_INVENTRY_dtEDIDate] DEFAULT (getdate()),
  CONSTRAINT [PK_EDI_INVENTRY] PRIMARY KEY CLUSTERED ([AutoID])
)
ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE TRIGGER [insertInventory] ON [dbo].[EDI_INVENTRY] 
FOR INSERT 
AS

update isas_parts.dbo.tblPart
set visionID = ins.uniqueID,
lastCost = ins.lastCost,
avgCost = ins.avgCost,
DateUpdatedVision = getdate()
from inserted ins, isas_parts.dbo.tblPart p
where p.partid = ins.partid
and updatedvision = 1
and updatedisas = 0

update edi_inventry
set updatedISAS = 1
from inserted ins, edi_inventry e
where e.autoid = ins.autoid
GO