CREATE TABLE [dbo].[tblStartupPromptUsers] (
  [UserName] [varchar](255) NOT NULL,
  [Database] [varchar](255) NOT NULL,
  CONSTRAINT [PK_tblStartupPromptUsers] PRIMARY KEY CLUSTERED ([UserName], [Database])
)
ON [PRIMARY]
GO