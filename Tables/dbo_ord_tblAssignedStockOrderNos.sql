CREATE TABLE [dbo].[ord_tblAssignedStockOrderNos] (
  [auditID] [int] IDENTITY,
  [assignedNo] [numeric] NULL,
  [orderNo] [nvarchar](50) NULL,
  [orderDate] [smalldatetime] NULL CONSTRAINT [DF_ord_tblAssignedStockOrderNos_orderDate] DEFAULT (getdate()),
  [createdBy] [nvarchar](100) NULL CONSTRAINT [DF_ord_tblAssignedStockOrderNos_createdBy] DEFAULT (suser_sname()),
  [createdOn] [smalldatetime] NULL CONSTRAINT [DF_ord_tblAssignedStockOrderNos_createdOn] DEFAULT (getdate()),
  [stockLocation] [nvarchar](100) NULL,
  CONSTRAINT [PK_ord_tblAssignedStockOrderNos] PRIMARY KEY CLUSTERED ([auditID])
)
ON [PRIMARY]
GO