CREATE TABLE [dbo].[EDI_ACCOUNT] (
  [AutoID] [int] IDENTITY,
  [AccountNo] [nvarchar](50) NULL,
  [AccountDescription] [nvarchar](50) NULL,
  [Branch] [nvarchar](50) NULL,
  [Z4Order] [bit] NOT NULL CONSTRAINT [DF_EDI_ACCOUNT_Z4Order] DEFAULT (0),
  [UpdatedISAS] [bit] NOT NULL CONSTRAINT [DF_EDI_ACCOUNT_UpdatedISAS] DEFAULT (0),
  [UpdatedVision] [bit] NOT NULL CONSTRAINT [DF_EDI_ACCOUNT_UpdatedVision] DEFAULT (0),
  [UniqueID] [nvarchar](50) NULL,
  [dtEDIDate] [datetime] NULL CONSTRAINT [DF_EDI_ACCOUNT_dtEDIDate] DEFAULT (getdate()),
  CONSTRAINT [PK_EDI_ACCOUNT] PRIMARY KEY CLUSTERED ([AutoID])
)
ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER OFF

SET ANSI_NULLS ON
GO
CREATE TRIGGER [insertAccount] ON [dbo].[EDI_ACCOUNT] 
FOR INSERT 
AS

update isas_parts.dbo.tblPart
set description = ins.accountdescription,
isobs = case when ins.z4order = 0 then 1 else 0 end,
fc = case when ins.z4order = 0 then 0 else 1 end
from inserted ins, isas_parts.dbo.tblPart p
where p.supplierpartcode = 'GL/'+ins.accountno
and updatedvision = 1
and updatedisas = 0

insert into isas_parts.dbo.tblPart
([supplierpartcode],[isasstockcode],[description],[fc],[sheilacodetype])
select 'GL/'+ins.accountno,ins.accountno,ins.accountdescription,1,3
from inserted ins
where ins.z4order = 1
and updatedvision = 1
and updatedisas = 0
and 'GL/'+ins.accountno not in  (select p2.supplierpartcode 
from inserted ins2, isas_parts.dbo.tblPart p2
where p2.supplierpartcode = 'GL/'+ins2.accountno)

update edi_account
set updatedISAS = 1
from inserted ins, edi_account e
where e.accountno = ins.accountno






GO