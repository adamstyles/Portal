CREATE TABLE [dbo].[jcm_DateLookup_Custom] (
  [Date Wed] [smalldatetime] NOT NULL,
  [End of Fortnight] [bit] NOT NULL CONSTRAINT [DF_jcm_DateLookup_Custom_End of Fortnight] DEFAULT (0),
  [End of Month] [bit] NOT NULL CONSTRAINT [DF_jcm_DateLookup_Custom_End of Month] DEFAULT (0),
  [End of Year] [bit] NOT NULL CONSTRAINT [DF_jcm_DateLookup_Custom_End of Year] DEFAULT (0),
  CONSTRAINT [PK_jcm_DateLookup_Custom] PRIMARY KEY CLUSTERED ([Date Wed])
)
ON [PRIMARY]
GO