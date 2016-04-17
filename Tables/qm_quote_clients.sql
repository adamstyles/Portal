CREATE TABLE [qm].[quote_clients] (
  [quote_ref] [nvarchar](255) NULL,
  [company] [nvarchar](50) NULL,
  [contact] [nvarchar](50) NULL,
  [fax] [nvarchar](15) NULL,
  [eMail] [nchar](254) NULL,
  CONSTRAINT [IX_quote_clients] UNIQUE ([quote_ref], [company], [contact], [fax])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_quote_ref]
  ON [qm].[quote_clients] ([quote_ref])
  ON [PRIMARY]
GO