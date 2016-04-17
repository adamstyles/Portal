CREATE TABLE [dbo].[InvoiceSigBlock] (
  [SigName] [nvarchar](100) NOT NULL,
  [SigPosition] [nvarchar](255) NOT NULL,
  [SigImageFile] [nvarchar](255) NULL,
  CONSTRAINT [PK_InvoiceSigBlock] PRIMARY KEY CLUSTERED ([SigName])
)
ON [PRIMARY]
GO