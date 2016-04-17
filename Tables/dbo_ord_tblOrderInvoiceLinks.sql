CREATE TABLE [dbo].[ord_tblOrderInvoiceLinks] (
  [AutoID] [int] IDENTITY,
  [PONumber] [nvarchar](30) NOT NULL,
  [InvoiceNumber] [nvarchar](30) NOT NULL,
  [Authorised] [bit] NOT NULL CONSTRAINT [DF_ord_tblOrderInvoiceLinks_Authorised] DEFAULT (0),
  [AuthorisedDate] [datetime] NULL,
  CONSTRAINT [PK_ord_tblOrderInvoiceLinks] PRIMARY KEY CLUSTERED ([AutoID])
)
ON [PRIMARY]
GO