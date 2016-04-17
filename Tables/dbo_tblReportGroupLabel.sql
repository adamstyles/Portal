CREATE TABLE [dbo].[tblReportGroupLabel] (
  [ID] [int] IDENTITY,
  [SupplierID] [int] NOT NULL,
  [GroupCode] [nvarchar](254) NOT NULL,
  [GroupDescription] [nvarchar](254) NOT NULL,
  [Comments] [nvarchar](254) NULL,
  CONSTRAINT [PK_tblReportGroupLabel] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
GO