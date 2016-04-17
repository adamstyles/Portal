CREATE TABLE [dbo].[jcm_Locations] (
  [Location Code] [nvarchar](2) NOT NULL,
  [Short Desc] [nvarchar](2) NULL,
  [Location Desc] [nvarchar](25) NULL,
  [Overtime T2 delay] [real] NULL CONSTRAINT [DF_jcm_Locations_Overtime T2 delay] DEFAULT (0),
  [Switchboards?] [bit] NOT NULL CONSTRAINT [DF_jcm_Locations_Switchboards?] DEFAULT (0),
  [External?] [bit] NOT NULL CONSTRAINT [DF_jcm_Locations_External?] DEFAULT (0),
  [ProjectFilePath] [nvarchar](100) NULL,
  CONSTRAINT [PK_jcm_Locations] PRIMARY KEY CLUSTERED ([Location Code])
)
ON [PRIMARY]
GO