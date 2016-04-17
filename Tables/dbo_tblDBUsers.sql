CREATE TABLE [dbo].[tblDBUsers] (
  [userName] [nvarchar](100) NOT NULL,
  [userPwd] [nvarchar](50) NULL,
  [CreateDate] [datetime] NULL,
  [CreatedBy] [nvarchar](50) NULL,
  [UpdateDate] [datetime] NULL,
  [UpdatedBy] [nvarchar](50) NULL,
  [DeleteDate] [datetime] NULL,
  [DeletedBy] [nvarchar](50) NULL,
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_tblDBUsers_Deleted] DEFAULT (0),
  CONSTRAINT [PK_tblDBUsers] PRIMARY KEY CLUSTERED ([userName])
)
ON [PRIMARY]
GO