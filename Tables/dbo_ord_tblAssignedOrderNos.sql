CREATE TABLE [dbo].[ord_tblAssignedOrderNos] (
  [auditID] [int] IDENTITY,
  [assignedNo] [numeric] NULL,
  [orderNo] [nvarchar](100) NULL,
  [orderDate] [smalldatetime] NULL CONSTRAINT [DF_ord_tblAssignedOrderNos_orderDate] DEFAULT (getdate()),
  [createdBy] [nvarchar](100) NULL CONSTRAINT [DF_ord_tblAssignedOrderNos_createdBy] DEFAULT (suser_sname()),
  [createdOn] [smalldatetime] NULL CONSTRAINT [DF_ord_tblAssignedOrderNos_createdOn] DEFAULT (getdate()),
  CONSTRAINT [PK_ord_tblAssignedOrderNos] PRIMARY KEY CLUSTERED ([auditID])
)
ON [PRIMARY]
GO