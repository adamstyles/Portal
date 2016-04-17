CREATE TABLE [cm].[Entry Types] (
  [Entry ID] [tinyint] NOT NULL,
  [Cons Entry Type] [nvarchar](30) NULL,
  [Abbr Entry Type] [nvarchar](10) NULL,
  [Inv?] [bit] NOT NULL,
  [Off Contract?] [bit] NOT NULL,
  CONSTRAINT [PK_Entry Types] PRIMARY KEY CLUSTERED ([Entry ID])
)
ON [PRIMARY]
GO