CREATE TABLE [fc].[tblInvoicePartNotes] (
  [lngPartNoteID] [int] IDENTITY,
  [NoteText] [varchar](2000) NULL,
  CONSTRAINT [PK_lngPartNoteID] PRIMARY KEY CLUSTERED ([lngPartNoteID])
)
ON [PRIMARY]
GO