CREATE TABLE [fc].[tblPartGroup] (
  [ID] [int] IDENTITY,
  [lngPartGroupID] [int] NOT NULL,
  [lngSearchOrder] [smallint] NOT NULL,
  [strPartGroupBrand] [nvarchar](50) NOT NULL,
  [strPartGroupCode] [nvarchar](50) NULL,
  [strPartGroupCodeTo] [nvarchar](50) NULL,
  [strPartGroupWildcard] [nvarchar](50) NULL,
  [strPartGroupSDC] [nvarchar](50) NULL,
  [boolUseWildcard] [bit] NOT NULL,
  [boolDeleted] [bit] NOT NULL,
  CONSTRAINT [PK_tblPartGroup] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
GO