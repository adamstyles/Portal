CREATE TABLE [dbo].[tblInvoiceCopyAudit] (
  [lngInvoiceID] [int] NOT NULL,
  [lngSourceInvoiceID] [int] NOT NULL,
  [Audit_Date] [datetime] NOT NULL,
  [Audit_User] [nvarchar](50) NOT NULL,
  CONSTRAINT [PK_tblInvoiceQuoteCopyAudit] PRIMARY KEY CLUSTERED ([lngInvoiceID])
)
ON [PRIMARY]
GO