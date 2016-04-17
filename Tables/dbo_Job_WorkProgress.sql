CREATE TABLE [dbo].[Job_WorkProgress] (
  [Job ID] [int] NOT NULL,
  [Material%] [real] NULL,
  [Expected Delivery] [datetime] NULL,
  [Comment] [nvarchar](255) NULL,
  CONSTRAINT [PK_Job_WorkProgress] PRIMARY KEY CLUSTERED ([Job ID])
)
ON [PRIMARY]
GO