CREATE TABLE [dbo].[tblPriority] (
  [PriorityNo] [int] NOT NULL,
  [PriorityLevel] [nvarchar](50) NULL,
  CONSTRAINT [PK_tblPriority] PRIMARY KEY CLUSTERED ([PriorityNo])
)
ON [PRIMARY]
GO