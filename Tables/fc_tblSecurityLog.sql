CREATE TABLE [fc].[tblSecurityLog] (
  [strActionType] [nvarchar](25) NULL,
  [strUserCode] [nvarchar](3) NOT NULL,
  [dtTimeStamp] [smalldatetime] NULL CONSTRAINT [DF_tblSecurityLog_dtTimeStamp] DEFAULT (getdate()),
  [strModifications] [char](8000) NULL,
  [lngInvoiceID] [int] NULL,
  [SecLogID] [int] IDENTITY,
  CONSTRAINT [PK_tblSecurityLog] PRIMARY KEY CLUSTERED ([SecLogID])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_lngInvoiceID]
  ON [fc].[tblSecurityLog] ([lngInvoiceID])
  ON [PRIMARY]
GO

CREATE INDEX [IX_strUserCode]
  ON [fc].[tblSecurityLog] ([strUserCode])
  ON [PRIMARY]
GO