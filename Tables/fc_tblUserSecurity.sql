CREATE TABLE [fc].[tblUserSecurity] (
  [strUserCode] [nvarchar](3) NOT NULL,
  [strUserName] [nvarchar](25) NULL,
  [ynChangeCredit] [bit] NOT NULL,
  [bytSalesmanNo] [tinyint] NULL CONSTRAINT [DF_tblUserSecurity_bytSalesmanNo] DEFAULT (0),
  [InvoiceType] [nvarchar](50) NULL,
  CONSTRAINT [PK_tblUserSecurity] PRIMARY KEY CLUSTERED ([strUserCode])
)
ON [PRIMARY]
GO