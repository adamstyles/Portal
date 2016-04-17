CREATE TABLE [dbo].[jcm_tblJobQualityDocument] (
  [SubJobID] [int] NOT NULL,
  [QualityDocumentID] [int] NOT NULL,
  CONSTRAINT [PK_jcm_tblJobQualityDocument] PRIMARY KEY CLUSTERED ([SubJobID], [QualityDocumentID])
)
ON [PRIMARY]
GO