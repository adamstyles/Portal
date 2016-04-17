CREATE TABLE [dbo].[EDI_ISASDB_DEPTCONTROL] (
  [Department] [nvarchar](2) NOT NULL,
  [EDISetting] [nvarchar](50) NOT NULL,
  [boolValue] [bit] NOT NULL,
  CONSTRAINT [PK_EDI_ISASDB_DEPTCONTROL] PRIMARY KEY CLUSTERED ([Department], [EDISetting])
)
ON [PRIMARY]
GO