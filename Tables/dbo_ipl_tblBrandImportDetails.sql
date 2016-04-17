CREATE TABLE [dbo].[ipl_tblBrandImportDetails] (
  [SupplierID] [int] NOT NULL,
  [BrandID] [int] IDENTITY,
  [Brand] [nvarchar](50) NULL,
  [File] [nvarchar](200) NULL,
  [LastImported] [datetime] NULL,
  [ImportSpec] [nvarchar](50) NULL,
  [FileType] [nvarchar](10) NULL,
  CONSTRAINT [PK_ipl_tblBrandImportDetails] PRIMARY KEY CLUSTERED ([SupplierID], [BrandID])
)
ON [PRIMARY]
GO