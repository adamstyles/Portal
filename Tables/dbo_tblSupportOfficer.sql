CREATE TABLE [dbo].[tblSupportOfficer] (
  [Area] [nvarchar](2) NOT NULL,
  [UserID] [nvarchar](3) NOT NULL,
  CONSTRAINT [PK_tblSupportOfficer] PRIMARY KEY CLUSTERED ([Area], [UserID])
)
ON [PRIMARY]
GO