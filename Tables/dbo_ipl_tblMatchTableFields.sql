CREATE TABLE [dbo].[ipl_tblMatchTableFields] (
  [SupplierID] [int] NOT NULL,
  [SupplierField] [nvarchar](50) NOT NULL,
  [tblPartField] [nvarchar](50) NULL,
  [Order] [int] NULL,
  [TableFieldID] [int] IDENTITY,
  CONSTRAINT [PK_ipl_tblMatchTableFields] PRIMARY KEY CLUSTERED ([TableFieldID])
)
ON [PRIMARY]
GO