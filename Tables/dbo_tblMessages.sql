CREATE TABLE [dbo].[tblMessages] (
  [DatabaseName] [int] NULL,
  [Message] [nvarchar](255) NULL,
  [MessageType] [nvarchar](50) NULL,
  [From] [nvarchar](100) NULL,
  [To] [nvarchar](100) NULL,
  [Date] [datetime] NULL CONSTRAINT [DF_tblMessages_Date] DEFAULT (getdate()),
  [MessageID] [int] NOT NULL,
  CONSTRAINT [PK_tblMessages] PRIMARY KEY CLUSTERED ([MessageID])
)
ON [PRIMARY]
GO