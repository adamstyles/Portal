CREATE TABLE [fc].[tblEDIFileControl] (
  [FoundINDFile] [bit] NOT NULL CONSTRAINT [DF_tblEDIFileControl_FoundINDFile] DEFAULT (0),
  [FoundJCDFile] [bit] NOT NULL CONSTRAINT [DF_tblEDIFileControl_FoundJCDFile] DEFAULT (0),
  [FoundDRDFile] [bit] NOT NULL CONSTRAINT [DF_tblEDIFileControl_FoundDRDFile] DEFAULT (0),
  [FilePath] [nvarchar](100) NULL,
  [StreamNo] [smallint] NULL,
  [IsImported] [bit] NOT NULL CONSTRAINT [DF_tblEDIFileControl_IsImported] DEFAULT (0),
  [ProcessedDate] [smalldatetime] NULL,
  [IsRemoved] [bit] NOT NULL CONSTRAINT [DF_tblEDIFileControl_IsRemoved] DEFAULT (0),
  [EDIID] [int] IDENTITY,
  CONSTRAINT [PK_tblEDIFileControl] PRIMARY KEY CLUSTERED ([EDIID])
)
ON [PRIMARY]
GO