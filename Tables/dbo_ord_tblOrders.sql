CREATE TABLE [dbo].[ord_tblOrders] (
  [orderNo] [nvarchar](30) NOT NULL,
  [supplier] [nvarchar](50) NULL,
  [supplierFax] [varchar](15) NULL,
  [supplierPhone] [varchar](15) NULL,
  [supplierContact] [varchar](50) NULL,
  [orderNote] [nvarchar](1000) NULL,
  [orderDate] [smalldatetime] NULL CONSTRAINT [DF_ord_tblOrders_orderDate_1] DEFAULT (getdate()),
  [despatchDateReq] [smalldatetime] NULL,
  [service] [nvarchar](50) NULL,
  [accountNo] [nvarchar](50) NULL,
  [deliveryVIA] [nvarchar](50) NULL,
  [contact] [nvarchar](50) NULL,
  [delivery] [nvarchar](50) NULL,
  [freight] [smallmoney] NULL CONSTRAINT [DF_ord_tblOrders_freight] DEFAULT (0),
  [deleted] [bit] NULL CONSTRAINT [DF_ord_tblOrders_deleted_1] DEFAULT (0),
  [enteredBy] [nvarchar](50) NULL CONSTRAINT [DF_ord_tblOrders_enteredBy_1] DEFAULT (suser_sname()),
  [updatedBy] [nvarchar](50) NULL CONSTRAINT [DF_ord_tblOrders_updatedBy_1] DEFAULT (suser_sname()),
  [updateDate] [smalldatetime] NULL CONSTRAINT [DF_ord_tblOrders_updateDate_1] DEFAULT (getdate()),
  [createDate] [smalldatetime] NULL CONSTRAINT [DF_ord_tblOrders_createDate_1] DEFAULT (getdate()),
  [stockLocation] [int] NULL,
  [hidePrices] [bit] NULL CONSTRAINT [DF_ord_tblOrders_hidePrices_1] DEFAULT (0),
  [SupplierEmail] [nvarchar](100) NULL,
  [ordered] [bit] NULL CONSTRAINT [DF_ord_tblOrders_ordered_1] DEFAULT (0),
  [deliveryNote] [nvarchar](200) NULL,
  [ynEdited] [bit] NULL CONSTRAINT [DF_ord_tblOrders_ynEdited_1] DEFAULT (0),
  [dtEDITimeStamp] [smalldatetime] NULL,
  [supplierID] [int] NULL,
  [bookToSingle] [bit] NOT NULL CONSTRAINT [DF_ord_tblOrders_bookToSingle] DEFAULT (0),
  [defaultJob] [nvarchar](50) NULL,
  [visionAccountNo] [nvarchar](50) NULL,
  [creditOrderNo] [nvarchar](50) NULL,
  [OrderedFor] [nvarchar](100) NULL,
  [ReqNo] [nvarchar](50) NULL,
  [despatchDateAct] [smalldatetime] NULL,
  [FollowUp] [smallint] NULL,
  [ConsignmentNote] [nvarchar](100) NULL,
  [TransportCompany] [nvarchar](100) NULL,
  [PaymentMethod] [nvarchar](10) NULL,
  CONSTRAINT [PK_ord_tblOrders] PRIMARY KEY CLUSTERED ([orderNo])
)
ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE TRIGGER [trgDELTEOrder] ON [dbo].[ord_tblOrders]
FOR DELETE
AS
INSERT INTO ord_tblOrdersAudit
                      (AuditUser, AuditDate, AuditOperation, orderNo, OLDsupplier, OLDsupplierFax, OLDsupplierPhone, OLDsupplierContact, OLDorderNote, OLDorderDate, OLDdespatchDateReq, 
                      OLDservice, OLDaccountNo, OLDdeliveryVIA, OLDcontact, OLDdelivery, OLDfreight)
SELECT     SYSTEM_USER AS Expr1, GETDATE() AS Expr2, 'DELETE' AS Expr3, orderNo, supplier, supplierFax, supplierPhone, supplierContact, orderNote, orderDate, despatchDateReq, service, accountNo, deliveryVIA, contact, 
                      delivery, freight
FROM         deleted
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE TRIGGER [trgINSERTOrder] ON [dbo].[ord_tblOrders] 
FOR INSERT
AS
INSERT INTO ord_tblOrdersAudit
                      (AuditUser, AuditDate, AuditOperation, orderNo, supplier, supplierFax, supplierPhone, supplierContact, orderNote, orderDate, despatchDateReq, service, accountNo, deliveryVIA, contact, 
                      delivery, freight)
SELECT     SYSTEM_USER AS Expr1, GETDATE() AS Expr2, 'INSERT' AS Expr3, orderNo, supplier, supplierFax, supplierPhone, supplierContact, orderNote, orderDate, despatchDateReq, service, accountNo, deliveryVIA, contact, 
                      delivery, freight
FROM         inserted
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE TRIGGER [trgUPDATEOrder] ON [dbo].[ord_tblOrders]
FOR UPDATE
AS
INSERT INTO ord_tblOrdersAudit
                      (AuditUser, AuditDate, AuditOperation, orderNo, supplier, supplierFax, supplierPhone, supplierContact, orderNote, orderDate, despatchDateReq, service, accountNo, deliveryVIA, contact, 
                      delivery, freight, OLDsupplier, OLDsupplierFax, OLDsupplierPhone, OLDsupplierContact, OLDorderNote, OLDorderDate, OLDdespatchDateReq, 
                      OLDservice, OLDaccountNo, OLDdeliveryVIA, OLDcontact, OLDdelivery, OLDfreight)
SELECT     SYSTEM_USER AS Expr1, GETDATE() AS Expr2, 'UPDATE' AS Expr3, ins.orderNo, ins.supplier, ins.supplierFax, ins.supplierPhone, ins.supplierContact, ins.orderNote, ins.orderDate, ins.despatchDateReq, ins.service, ins.accountNo, ins.deliveryVIA, ins.contact, 
ins.delivery, ins.freight, del.supplier, del.supplierFax, del.supplierPhone, del.supplierContact, del.orderNote, del.orderDate, del.despatchDateReq, del.service, del.accountNo, del.deliveryVIA, del.contact, 
del.delivery, del.freight
FROM         inserted ins CROSS JOIN
                      deleted del
GO