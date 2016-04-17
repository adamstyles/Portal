CREATE TABLE [dbo].[quote_Module_Group] (
  [GroupID] [int] IDENTITY,
  [GroupName] [nvarchar](255) NOT NULL,
  [GroupDescription] [nvarchar](255) NOT NULL,
  CONSTRAINT [PK_quote_Module_Group] PRIMARY KEY CLUSTERED ([GroupID])
)
ON [PRIMARY]
GO