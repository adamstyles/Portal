CREATE TABLE [dbo].[ipl_tblMatchCategory] (
  [BrandID] [int] NOT NULL,
  [SupplierCategory] [nvarchar](50) NOT NULL,
  [QMCategory] [int] NULL,
  [Category1] [int] NULL,
  [Category2] [int] NULL,
  [Category3] [int] NULL,
  [New?] [bit] NOT NULL CONSTRAINT [DF_ipl_tblMatchCategory_New?] DEFAULT (0),
  [Obsolete?] [bit] NOT NULL CONSTRAINT [DF_ipl_tblMatchCategory_Obsolete?] DEFAULT (0),
  CONSTRAINT [PK_ipl_tblMatchCategory] PRIMARY KEY CLUSTERED ([BrandID], [SupplierCategory])
)
ON [PRIMARY]
GO