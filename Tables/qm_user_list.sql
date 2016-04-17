CREATE TABLE [qm].[user_list] (
  [user_name] [nvarchar](30) NOT NULL,
  [machine] [nvarchar](20) NULL,
  [department] [nvarchar](2) NULL,
  [ViewNonQMParts] [bit] NULL CONSTRAINT [DF_user_list_ViewNonQMParts] DEFAULT (0),
  [AccessUserName] [nvarchar](20) NULL,
  [DefaultPDFPath] [nvarchar](255) NULL,
  CONSTRAINT [PK_user_list] PRIMARY KEY CLUSTERED ([user_name])
)
ON [PRIMARY]
GO