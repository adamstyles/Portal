CREATE TABLE [dbo].[tblUsageInvoiceDetails] (
  [ReportMonth] [smalldatetime] NOT NULL,
  [ContractID] [int] NOT NULL,
  [InvoiceNo] [nvarchar](50) NULL,
  CONSTRAINT [PK_tblUsageInvoiceDetails] PRIMARY KEY CLUSTERED ([ReportMonth], [ContractID])
)
ON [PRIMARY]
GO