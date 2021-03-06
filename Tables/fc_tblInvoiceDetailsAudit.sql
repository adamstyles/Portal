﻿CREATE TABLE [fc].[tblInvoiceDetailsAudit] (
  [AuditID] [int] IDENTITY,
  [lngInvoiceID] [int] NOT NULL,
  [lngCompanyID] [int] NOT NULL,
  [lngCustomerID] [int] NULL,
  [strInvoiceNo] [nvarchar](50) NOT NULL,
  [strOrderNo] [nvarchar](50) NULL,
  [strUserCode] [nvarchar](50) NULL,
  [ynQuote] [bit] NOT NULL,
  [memDeliveryDetails] [char](400) NULL,
  [dtInvoiceDate] [smalldatetime] NULL,
  [strCustomerName] [nvarchar](50) NULL,
  [strElecTransNo] [nvarchar](50) NULL,
  [strConNoteNo] [nvarchar](25) NULL,
  [strCourierName] [nvarchar](50) NULL,
  [dtEDITimeStamp] [smalldatetime] NULL,
  [ynDeleted] [bit] NOT NULL,
  [dtDespatchDate] [smalldatetime] NULL,
  [dtOrderDate] [smalldatetime] NULL,
  [strSheilaTransType] [nvarchar](3) NULL,
  [lngCreditFromInvoiceID] [int] NULL,
  [ynEdited] [bit] NOT NULL,
  [ynOnHold] [bit] NOT NULL,
  [dtQuoteValidUntil] [smalldatetime] NULL,
  [ynContract] [bit] NOT NULL,
  [oldlngCompanyID] [int] NULL,
  [oldlngCustomerID] [int] NULL,
  [oldstrInvoiceNo] [nvarchar](50) NULL,
  [oldstrOrderNo] [nvarchar](50) NULL,
  [oldstrUserCode] [nvarchar](50) NULL,
  [oldynQuote] [bit] NOT NULL,
  [oldmemDeliveryDetails] [char](400) NULL,
  [olddtInvoiceDate] [smalldatetime] NULL,
  [oldstrCustomerName] [nvarchar](50) NULL,
  [oldstrElecTransNo] [nvarchar](50) NULL,
  [oldstrConNoteNo] [nvarchar](25) NULL,
  [oldstrCourierName] [nvarchar](50) NULL,
  [olddtEDITimeStamp] [smalldatetime] NULL,
  [oldynDeleted] [bit] NOT NULL,
  [olddtDespatchDate] [smalldatetime] NULL,
  [olddtOrderDate] [smalldatetime] NULL,
  [oldstrSheilaTransType] [nvarchar](3) NULL,
  [oldlngCreditFromInvoiceID] [int] NULL,
  [oldynEdited] [bit] NOT NULL,
  [oldynOnHold] [bit] NOT NULL,
  [olddtQuoteValidUntil] [smalldatetime] NULL,
  [oldynContract] [bit] NOT NULL,
  [Audit_User] [nvarchar](50) NOT NULL,
  [Audit_Date] [datetime] NOT NULL,
  [Audit_Operation] [nvarchar](10) NOT NULL,
  CONSTRAINT [PK_tblInvoiceDetailsAudit] PRIMARY KEY CLUSTERED ([AuditID])
)
ON [PRIMARY]
GO