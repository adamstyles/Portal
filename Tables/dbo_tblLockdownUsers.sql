CREATE TABLE [dbo].[tblLockdownUsers] (
  [ID] [int] IDENTITY,
  [AccessUserName] [nvarchar](50) NOT NULL,
  [LockdownOn] [nvarchar](50) NOT NULL,
  [ynRestrictToThisUser] [bit] NOT NULL,
  CONSTRAINT [PK_tblLockdownUsers] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
GO