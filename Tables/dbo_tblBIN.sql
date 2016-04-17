CREATE TABLE [dbo].[tblBIN] (
  [BIN_ID] [int] IDENTITY,
  [BIN_Name] [nvarchar](8) NOT NULL,
  [BIN_Description] [nvarchar](255) NOT NULL,
  CONSTRAINT [PK_tblBIN] PRIMARY KEY CLUSTERED ([BIN_ID])
)
ON [PRIMARY]
GO