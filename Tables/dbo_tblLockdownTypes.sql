CREATE TABLE [dbo].[tblLockdownTypes] (
  [LockdownArea] [nvarchar](50) NOT NULL,
  [Message] [nvarchar](255) NOT NULL,
  CONSTRAINT [PK_tblLockdownTypes] PRIMARY KEY CLUSTERED ([LockdownArea])
)
ON [PRIMARY]
GO