CREATE TABLE [dbo].[jcm_ViewExclusions] (
  [JobID] [int] NOT NULL,
  [boolCurrentView] [bit] NOT NULL,
  [boolCurrentJobStatus] [bit] NOT NULL,
  CONSTRAINT [PK_jcm_ViewExclusions] PRIMARY KEY CLUSTERED ([JobID])
)
ON [PRIMARY]
GO