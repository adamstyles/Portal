CREATE TABLE [dbo].[tblUsers] (
  [UserID] [nvarchar](50) NOT NULL,
  [UserName] [nvarchar](50) NULL,
  [FullName] [nvarchar](50) NULL,
  [Account] [nvarchar](50) NULL,
  [Email] [nvarchar](250) NULL,
  [Phone] [nvarchar](50) NULL,
  [Location] [nvarchar](50) NULL,
  [Signature] [nvarchar](300) NULL,
  [IsDeleted] [bit] NOT NULL CONSTRAINT [DF_tblUsers_IsDeleted] DEFAULT (0),
  [GoodsIssue] [bit] NOT NULL CONSTRAINT [DF_tblUsers_GoodsIssue] DEFAULT (0),
  [Access] [bit] NOT NULL CONSTRAINT [DF_tblUsers_Access] DEFAULT (0),
  [Department] [nvarchar](100) NULL,
  [Position] [nvarchar](100) NULL,
  [FCUserName] [nvarchar](50) NULL,
  CONSTRAINT [PK_tblUsers] PRIMARY KEY CLUSTERED ([UserID])
)
ON [PRIMARY]
GO