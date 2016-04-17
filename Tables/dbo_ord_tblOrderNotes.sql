CREATE TABLE [dbo].[ord_tblOrderNotes] (
  [OrderNoteID] [int] IDENTITY,
  [OrderNoteName] [varchar](64) NOT NULL,
  [OrderNoteText] [varchar](1000) NOT NULL,
  [OrderNoteType] [varchar](1) NOT NULL,
  CONSTRAINT [PK_ord_tblOrderNotes] PRIMARY KEY CLUSTERED ([OrderNoteID])
)
ON [PRIMARY]
GO