CREATE TABLE [dbo].[jcm_tblQualityDocument] (
  [QualityDocumentID] [int] IDENTITY,
  [DocumentNo] [nvarchar](50) NULL,
  [Title] [nvarchar](100) NULL,
  [FileName] [nvarchar](50) NULL,
  [1/] [tinyint] NULL,
  [2/] [tinyint] NULL,
  [4/] [tinyint] NULL,
  CONSTRAINT [PK_jcm_tblQualityDocument] PRIMARY KEY CLUSTERED ([QualityDocumentID])
)
ON [PRIMARY]
GO