CREATE TABLE [dbo].[tblErrors] (
  [ErrorCode] [int] NOT NULL,
  [ErrorMessage] [nvarchar](50) NULL,
  [Reason] [nvarchar](50) NULL,
  [Solution] [nvarchar](50) NULL,
  [Product] [nvarchar](50) NULL,
  CONSTRAINT [PK_tblErrors] PRIMARY KEY CLUSTERED ([ErrorCode])
)
ON [PRIMARY]
GO