CREATE TABLE [dbo].[tblInvoiceDefaults] (
  [DefaultFor] [nvarchar](50) NOT NULL,
  [DefaultValue] [int] NOT NULL,
  [MaxValue] [int] NOT NULL,
  CONSTRAINT [PK_InvoiceDefaults] PRIMARY KEY CLUSTERED ([DefaultFor])
)
ON [PRIMARY]
GO