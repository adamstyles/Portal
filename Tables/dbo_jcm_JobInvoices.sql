CREATE TABLE [dbo].[jcm_JobInvoices] (
  [Job ID] [int] NOT NULL,
  [Invoice No] [nvarchar](20) NULL,
  [Invoice Date] [smalldatetime] NULL,
  [Invoice Amount] [money] NULL,
  [Var No] [int] NULL,
  [JobInvID] [int] IDENTITY,
  CONSTRAINT [PK_jcm_JobInvoices] PRIMARY KEY CLUSTERED ([JobInvID])
)
ON [PRIMARY]
GO