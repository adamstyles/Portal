CREATE TABLE [dbo].[EDI_CUSTOMER] (
  [AutoID] [int] IDENTITY,
  [Updated] [bit] NOT NULL CONSTRAINT [DF_EDI_CUSTOMER_Updated] DEFAULT (0),
  [SheilaDebtorCode] [nvarchar](50) NULL,
  [CompanyName] [nvarchar](50) NULL,
  [GroupNo] [numeric] NULL,
  [PostalAddress1] [nvarchar](150) NULL,
  [PostalAddress2] [nvarchar](150) NULL,
  [PostalSuburb] [nvarchar](150) NULL,
  [PostalState] [nvarchar](50) NULL,
  [PostalPostcode] [nvarchar](50) NULL,
  [ShippingAddress1] [nvarchar](150) NULL,
  [ShippingAddress2] [nvarchar](150) NULL,
  [ShippingSuburb] [nvarchar](150) NULL,
  [ShippingState] [nvarchar](50) NULL,
  [ShippingPostcode] [nvarchar](50) NULL,
  [ABN] [nvarchar](25) NULL,
  [SheilaAccountsContact] [nvarchar](50) NULL,
  [Phone] [nvarchar](25) NULL,
  [Fax] [nvarchar](25) NULL,
  [IsOnCreditHold] [bit] NOT NULL CONSTRAINT [DF_EDI_CUSTOMER_IsOnCreditHold] DEFAULT (0),
  [CreditComment] [nvarchar](100) NULL,
  [UpdatedISAS] [bit] NOT NULL CONSTRAINT [DF_EDI_CUSTOMER_UpdatedISAS] DEFAULT (0),
  [UpdatedVision] [bit] NOT NULL CONSTRAINT [DF_EDI_CUSTOMER_UpdatedVision] DEFAULT (0),
  [CustomerID] [int] NULL,
  [IsDeleted] [bit] NOT NULL CONSTRAINT [DF_EDI_CUSTOMER_IsDeleted] DEFAULT (0),
  [UniqueID] [nvarchar](50) NULL,
  [LinkedSheilaDebtorCode] [nvarchar](50) NULL,
  [dtEDIDate] [datetime] NULL CONSTRAINT [DF_EDI_CUSTOMER_dtEDIDate] DEFAULT (getdate()),
  CONSTRAINT [PK_EDI_CUSTOMER] PRIMARY KEY CLUSTERED ([AutoID])
)
ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE TRIGGER [insertCustomer] ON [dbo].[EDI_CUSTOMER] 
FOR INSERT 
AS

update isas_parts.dbo.tblCompanyDetails
set SheilaDebtorCode = ins.SheilaDebtorCode,
Companyname = ins.companyname,
GroupNo = ins.GroupNo,
PostalAddressLine1 = ins.PostalAddress1,
PostalAddressLine2 = ins.PostalAddress2,
PostalSuburb = ins.PostalSuburb,
PostalState = ins.PostalState,
PostalPostcode = ins.PostalPostcode,
ShippingAddressLine1 = ins.ShippingAddress1,
ShippingAddressLine2 = ins.ShippingAddress2,
ShippingSuburb = ins.ShippingSuburb,
ShippingState = ins.ShippingState,
ShippingPostcode = ins.ShippingPostcode,
ABN = ins.ABN,
SheilaAccountsContact = ins.SheilaAccountsContact,
Phone = ins.Phone,
Fax = ins.Fax,
CreditComment = ins.CreditComment,
isDeleted = ins.isDeleted,
VisionID = ins.UniqueID,
DateUpdatedVision = getdate()
from inserted ins, isas_parts.dbo.tblCompanyDetails c
where (c.CompanyID = ins.CustomerID or c.SheilaDebtorCode = ins.SheilaDebtorCode)
and ins.updatedvision = 1
and ins.updatedisas = 0
and c.LinkedSheilaDebtorCode is null

insert into isas_parts.dbo.tblCompanyDetails
(SheilaDebtorCode,
Companyname,
GroupNo,
PostalAddressLine1,
PostalAddressLine2,
PostalSuburb,
PostalState,
PostalPostcode,
ShippingAddressLine1,
ShippingAddressLine2,
ShippingSuburb,
ShippingState,
ShippingPostcode,
ABN,
SheilaAccountsContact,
Phone,
Fax,
IsOnCreditHold,
CreditComment,
isDeleted,
VisionID,
DateUpdatedVision)
select ins.SheilaDebtorCode,
ins.companyname,
ins.GroupNo,
ins.PostalAddress1,
ins.PostalAddress2,
ins.PostalSuburb,
ins.PostalState,
ins.PostalPostcode,
ins.ShippingAddress1,
ins.ShippingAddress2,
ins.ShippingSuburb,
ins.ShippingState,
ins.ShippingPostcode,
ins.ABN,
ins.SheilaAccountsContact,
ins.Phone,
ins.Fax,
ins.IsOnCreditHold,
ins.CreditComment,
ins.isDeleted,
ins.UniqueID,
getdate()
from inserted ins
where (ins.CustomerID is null or ins.CustomerID = 0)
and updatedvision = 1
and updatedisas = 0
and not (ins.SheilaDebtorCode is null)
and ins.SheilaDebtorCode not in  (select c2.SheilaDebtorCode
from inserted ins2, isas_parts.dbo.tblCompanyDetails c2
where c2.SheilaDebtorCode = ins2.SheilaDebtorCode)


update edi_customer
set updatedISAS = 1,
updatedVision = 0,
customerid = c.CompanyID
from inserted ins, isas_parts.dbo.tblCompanyDetails c, edi_customer e
where c.SheilaDebtorCode = ins.SheilaDebtorCode
and (ins.customerid = 0 or ins.customerid is null)
and e.autoID = ins.autoID

update edi_customer
set updatedISAS = 1
from inserted ins, edi_customer c
where c.autoID = ins.autoID
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'', 'SCHEMA', N'dbo', 'TABLE', N'EDI_CUSTOMER', 'COLUMN', N'UpdatedISAS'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'', 'SCHEMA', N'dbo', 'TABLE', N'EDI_CUSTOMER', 'COLUMN', N'UpdatedVision'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'', 'SCHEMA', N'dbo', 'TABLE', N'EDI_CUSTOMER', 'COLUMN', N'IsDeleted'
GO