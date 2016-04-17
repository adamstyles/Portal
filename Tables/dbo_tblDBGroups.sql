CREATE TABLE [dbo].[tblDBGroups] (
  [DBGroupID] [int] IDENTITY,
  [DBGroupName] [nvarchar](100) NULL,
  CONSTRAINT [PK_tblDBGroups] PRIMARY KEY CLUSTERED ([DBGroupID])
)
ON [PRIMARY]
GO