CREATE TABLE [dbo].[ipl_tblMatchUOM] (
  [SupplierID] [int] NOT NULL,
  [SupplierUOM] [nvarchar](6) NOT NULL,
  [ISASUOM] [int] NULL,
  CONSTRAINT [PK_ipl_tblMatchUOM] PRIMARY KEY CLUSTERED ([SupplierID], [SupplierUOM])
)
ON [PRIMARY]
GO