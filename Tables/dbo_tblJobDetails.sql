CREATE TABLE [dbo].[tblJobDetails] (
  [JobID] [int] IDENTITY,
  [Name] [nvarchar](100) NOT NULL,
  [RequestDate] [smalldatetime] NULL,
  [Status] [nvarchar](50) NULL,
  [StatusNotes] [varchar](500) NULL,
  [DatabaseID] [int] NOT NULL,
  [DueDate] [smalldatetime] NULL,
  [Completed] [smalldatetime] NULL,
  [Solution] [varchar](800) NULL,
  [Issues] [varchar](1200) NULL,
  [RequestedBy] [nvarchar](50) NULL,
  [ynCompleted] [bit] NOT NULL CONSTRAINT [DF_tblJobDetails_ynCompleted] DEFAULT (0),
  [Area] [nvarchar](2) NULL,
  [Priority] [int] NULL,
  CONSTRAINT [PK_tblJobDetails] PRIMARY KEY CLUSTERED ([JobID])
)
ON [PRIMARY]
GO