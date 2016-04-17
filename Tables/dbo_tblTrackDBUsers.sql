CREATE TABLE [dbo].[tblTrackDBUsers] (
  [DatabaseName] [int] NOT NULL,
  [ComputerName] [nvarchar](100) NOT NULL,
  [Instance] [int] NOT NULL,
  [User] [nvarchar](100) NOT NULL,
  [Shutdown] [bit] NOT NULL CONSTRAINT [DF_tblTrackDBUsers_Shutdown] DEFAULT (0),
  [NewVersion] [bit] NOT NULL CONSTRAINT [DF_tblTrackDBUsers_NewVersion] DEFAULT (0),
  [DisplaySystemMessage] [bit] NOT NULL CONSTRAINT [DF_tblTrackDBUsers_DisplaySystemMessage] DEFAULT (0),
  [LoginTime] [datetime] NULL CONSTRAINT [DF_tblTrackDBUsers_LoginTime] DEFAULT (getdate()),
  [StatusChecked] [datetime] NULL CONSTRAINT [DF_tblTrackDBUsers_StatusChecked] DEFAULT (getdate()),
  CONSTRAINT [PK_tblTrackDBUsers] PRIMARY KEY CLUSTERED ([DatabaseName], [ComputerName], [Instance], [User])
)
ON [PRIMARY]
GO