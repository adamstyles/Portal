CREATE TABLE [dbo].[EDI_STATUS] (
  [EDI_UserNo] [int] NOT NULL,
  [EDI_UserName] [nvarchar](20) NOT NULL,
  [EDI_StartDateTime] [datetime] NOT NULL,
  CONSTRAINT [PK_EDI_STATUS] PRIMARY KEY CLUSTERED ([EDI_UserNo])
)
ON [PRIMARY]
GO