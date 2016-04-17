CREATE TABLE [dbo].[tblJobNotes] (
  [NoteID] [int] IDENTITY,
  [JobID] [int] NULL,
  [Notes] [varchar](900) NULL,
  [AuditDate] [smalldatetime] NULL,
  [AuditUser] [nvarchar](50) NULL,
  CONSTRAINT [PK_tblJobNotes] PRIMARY KEY CLUSTERED ([NoteID])
)
ON [PRIMARY]
GO