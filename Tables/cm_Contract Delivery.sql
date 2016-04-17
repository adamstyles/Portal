CREATE TABLE [cm].[Contract Delivery] (
  [Contract ID] [int] NOT NULL,
  [Text] [nvarchar](70) NOT NULL,
  [Box] [bit] NOT NULL,
  CONSTRAINT [PK_Contract Delivery] PRIMARY KEY CLUSTERED ([Contract ID], [Text])
)
ON [PRIMARY]
GO