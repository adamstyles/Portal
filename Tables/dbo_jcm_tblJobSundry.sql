CREATE TABLE [dbo].[jcm_tblJobSundry] (
  [transferID] [int] IDENTITY,
  [jobID] [int] NOT NULL,
  [amount] [smallmoney] NULL,
  [note] [nvarchar](250) NULL,
  [Mth] [smalldatetime] NULL,
  CONSTRAINT [PK_jcm_tblJobSundry] PRIMARY KEY CLUSTERED ([transferID])
)
ON [PRIMARY]
GO