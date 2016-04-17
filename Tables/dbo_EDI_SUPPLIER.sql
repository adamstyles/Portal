CREATE TABLE [dbo].[EDI_SUPPLIER] (
  [AutoID] [int] IDENTITY,
  [Updated] [bit] NOT NULL CONSTRAINT [DF_EDI_SUPPLIER_Updated] DEFAULT (0),
  [SheilaCode] [nvarchar](16) NULL,
  [SupplierName] [varchar](100) NOT NULL,
  [SupplierAddr1] [varchar](50) NULL,
  [SupplierAddr2] [varchar](50) NULL,
  [Suburb] [nvarchar](50) NULL,
  [State] [nvarchar](4) NULL,
  [PostCode] [nvarchar](10) NULL,
  [SupplierContact] [varchar](50) NULL,
  [SupplierPhone] [varchar](25) NULL,
  [SupplierFax] [varchar](25) NULL,
  [SupplierABN] [varchar](50) NULL,
  [IsDeleted] [bit] NOT NULL CONSTRAINT [DF_EDI_SUPPLIER_IsDeleted] DEFAULT (0),
  [UpdatedISAS] [bit] NOT NULL CONSTRAINT [DF_EDI_SUPPLIER_UpdatedISAS] DEFAULT (0),
  [UpdatedVision] [bit] NOT NULL CONSTRAINT [DF_EDI_SUPPLIER_UpdatedVision] DEFAULT (0),
  [SupplierID] [int] NULL,
  [UniqueID] [nvarchar](50) NULL,
  [GroupNo] [numeric] NULL,
  [dtEDIDate] [datetime] NULL CONSTRAINT [DF_EDI_SUPPLIER_dtEDIDate] DEFAULT (getdate()),
  CONSTRAINT [PK_EDI_SUPPLIER] PRIMARY KEY CLUSTERED ([AutoID])
)
ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE TRIGGER [insertSupplier] ON [dbo].[EDI_SUPPLIER] 
FOR INSERT 
AS

update isas_parts.dbo.tblSuppliers
set SheilaCode = ins.SheilaCode,
SupplierName = ins.SupplierName,
GroupNo = ins.GroupNo,
SupplierAddr1 = ins.SupplierAddr1,
SupplierAddr2 = ins.SupplierAddr2,
Suburb = ins.Suburb,
State = ins.State,
Postcode = ins.Postcode,
SupplierContact = ins.SupplierContact,
SupplierPhone = ins.SupplierPhone,
SupplierFax = ins.SupplierFax,
SupplierABN = ins.SupplierABN,
isDeleted = ins.isDeleted,
VisionID = ins.UniqueID,
DateUpdatedVision = getdate()
from inserted ins, isas_parts.dbo.tblSuppliers s
where (((s.SupplierID = ins.SupplierID) and (ins.SupplierID <> 0)) or 
((s.SheilaCode = ins.SheilaCode) and (s.linkedid is null)))
and (ins.updatedvision = 1)
and (ins.updatedisas = 0)

insert into isas_parts.dbo.tblSuppliers
(SheilaCode,
SupplierName,
GroupNo,
SupplierAddr1,
SupplierAddr2,
Suburb,
State,
Postcode,
SupplierContact,
SupplierPhone,
SupplierFax,
SupplierABN,
isDeleted,
VisionID,
DateUpdatedVision) 
select ins.SheilaCode,
ins.SupplierName,
ins.GroupNo,
ins.SupplierAddr1,
ins.SupplierAddr2,
ins.Suburb,
ins.State,
ins.Postcode,
ins.SupplierContact,
ins.SupplierPhone,
ins.SupplierFax,
ins.SupplierABN,
ins.isDeleted,
ins.UniqueID,
getdate()
from inserted ins
where ((ins.SupplierID is null) or (ins.SupplierID = 0))
and (updatedvision = 1)
and (updatedisas = 0)
and (ins.SheilaCode not in 
(select s2.SheilaCode
from inserted ins2, isas_parts.dbo.tblSuppliers s2
where (s2.SheilaCode = ins2.SheilaCode)))

update edi_supplier
set updatedISAS = 1,
updatedVision = 0,
Supplierid = s.SupplierID
from inserted ins, isas_parts.dbo.tblSuppliers s, edi_supplier e
where (s.SheilaCode = ins.SheilaCode)
and ((ins.Supplierid = 0) or (ins.Supplierid is null))
and (e.autoID = ins.autoID)

update edi_supplier
set updatedISAS = 1
from inserted ins, edi_supplier s
where (s.autoID = ins.autoID)
GO