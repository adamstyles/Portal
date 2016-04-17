CREATE TABLE [dbo].[jcm_tblJobDocumentNo] (
  [JobID] [int] NULL,
  [VarNo] [int] NULL,
  [SubJobID] [int] IDENTITY,
  [IDNo] [int] NULL,
  [Qty] [int] NULL,
  [Items] [nvarchar](50) NULL,
  [JNPrefix] [nvarchar](50) NULL,
  [DeleteDate] [smalldatetime] NULL,
  CONSTRAINT [PK_jcm_tblJobDocumentNo] PRIMARY KEY CLUSTERED ([SubJobID])
)
ON [PRIMARY]
GO