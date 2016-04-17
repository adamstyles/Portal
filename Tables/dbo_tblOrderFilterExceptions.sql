CREATE TABLE [dbo].[tblOrderFilterExceptions] (
  [ExceptionID] [int] NOT NULL,
  [ExceptionType] [nvarchar](32) NOT NULL,
  [Owner] [nvarchar](8) NOT NULL CONSTRAINT [DF_tblOrderFilterExceptions_Owner] DEFAULT (N'*'),
  [ExceptionDescription] [nvarchar](255) NOT NULL,
  [SQL_Condition] [nvarchar](255) NOT NULL,
  CONSTRAINT [PK_tblOrderFilterExceptions] PRIMARY KEY CLUSTERED ([ExceptionID])
)
ON [PRIMARY]
GO