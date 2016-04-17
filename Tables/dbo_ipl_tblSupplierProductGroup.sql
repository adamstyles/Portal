CREATE TABLE [dbo].[ipl_tblSupplierProductGroup] (
  [SupplierID] [int] NOT NULL,
  [ProductGroupCode] [nvarchar](4) NOT NULL,
  [Description] [nvarchar](50) NOT NULL,
  [Discount] [float] NULL,
  CONSTRAINT [PK_ipl_tblSupplierProductGroup] PRIMARY KEY CLUSTERED ([SupplierID], [ProductGroupCode], [Description])
)
ON [PRIMARY]
GO