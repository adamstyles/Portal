CREATE TABLE [fc].[tblPartGroupName] (
  [lngPartGroupID] [int] IDENTITY,
  [strPartGroupName] [nvarchar](50) NOT NULL,
  [ynDeleted] [bit] NOT NULL,
  CONSTRAINT [PK_tblPartGroupName] PRIMARY KEY CLUSTERED ([lngPartGroupID])
)
ON [PRIMARY]
GO