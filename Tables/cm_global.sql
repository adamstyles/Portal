CREATE TABLE [cm].[global] (
  [LY Start] [smalldatetime] NULL,
  [LY End] [smalldatetime] NULL,
  [YBL Start] [smalldatetime] NULL,
  [YBL End] [smalldatetime] NULL,
  [CurContract] [int] NOT NULL,
  CONSTRAINT [PK_global] PRIMARY KEY CLUSTERED ([CurContract])
)
ON [PRIMARY]
GO