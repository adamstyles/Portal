CREATE TABLE [qm].[client] (
  [ID] [nvarchar](15) NOT NULL,
  [company] [nvarchar](50) NULL,
  [contact] [nvarchar](50) NULL,
  [fax] [nvarchar](15) NULL,
  [eMail] [nvarchar](254) NULL,
  CONSTRAINT [PK_ID] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
GO