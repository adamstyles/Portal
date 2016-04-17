CREATE TABLE [dbo].[tblMessageInbox] (
  [MessageID] [int] NOT NULL,
  [User] [nvarchar](100) NOT NULL,
  [Read] [bit] NOT NULL CONSTRAINT [DF_tblMessageInbox_Read] DEFAULT (0),
  [DateRead] [datetime] NULL CONSTRAINT [DF_tblMessageInbox_DateRead] DEFAULT (getdate()),
  CONSTRAINT [PK_tblMessageInbox] PRIMARY KEY CLUSTERED ([MessageID], [User])
)
ON [PRIMARY]
GO