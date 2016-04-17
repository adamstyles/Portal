CREATE TABLE [dbo].[ord_tblSentOrderHistory] (
  [sentID] [int] IDENTITY,
  [orderNo] [nvarchar](50) NULL,
  [dateSent] [smalldatetime] NULL CONSTRAINT [DF_ord_tblSentOrderHistory_dateSent] DEFAULT (getdate()),
  [to] [nvarchar](200) NULL,
  [cc] [nvarchar](200) NULL,
  [bcc] [nvarchar](200) NULL,
  [subject] [nvarchar](100) NULL,
  [message] [nvarchar](255) NULL,
  [type] [nvarchar](50) NULL,
  [contactName] [nvarchar](50) NULL,
  [user] [nvarchar](50) NULL,
  [sentNote] [nvarchar](255) NULL CONSTRAINT [DF_ord_tblSentOrderHistory_sentNote] DEFAULT ('Sent copy of order to supplier'),
  [edited] [bit] NULL CONSTRAINT [DF_ord_tblSentOrderHistory_edited] DEFAULT (0),
  [resent] [bit] NULL CONSTRAINT [DF_ord_tblSentOrderHistory_resent] DEFAULT (0),
  CONSTRAINT [PK_ord_tblSentOrderHistory] PRIMARY KEY CLUSTERED ([sentID])
)
ON [PRIMARY]
GO