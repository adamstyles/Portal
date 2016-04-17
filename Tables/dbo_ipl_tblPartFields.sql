CREATE TABLE [dbo].[ipl_tblPartFields] (
  [tblPartField] [nvarchar](50) NOT NULL,
  [ISASUpdate] [bit] NOT NULL CONSTRAINT [DF_ipl_tblPartFields_ISASUpdate] DEFAULT (0),
  [MatchField] [bit] NOT NULL CONSTRAINT [DF_ipl_tblPartFields_MatchField] DEFAULT (0),
  CONSTRAINT [PK_ipl_tblPartFields] PRIMARY KEY CLUSTERED ([tblPartField])
)
ON [PRIMARY]
GO