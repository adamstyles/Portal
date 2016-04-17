CREATE TABLE [dbo].[import jobs ISAS SQL] (
  [SheilaID] [int] IDENTITY,
  [OrigCode] [nvarchar](50) NOT NULL,
  [NewCode] [nvarchar](50) NOT NULL,
  [Desc] [nvarchar](255) NULL,
  [Price Quoted] [money] NULL CONSTRAINT [DF_import jobs ISAS SQL_Price Quoted] DEFAULT (0),
  [JobID] [int] NULL,
  CONSTRAINT [PK_import jobs ISAS SQL] PRIMARY KEY CLUSTERED ([SheilaID], [OrigCode], [NewCode])
)
ON [PRIMARY]
GO