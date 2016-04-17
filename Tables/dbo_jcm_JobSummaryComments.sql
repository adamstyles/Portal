CREATE TABLE [dbo].[jcm_JobSummaryComments] (
  [JobID] [int] NOT NULL,
  [Comments] [text] NULL,
  CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED ([JobID])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO