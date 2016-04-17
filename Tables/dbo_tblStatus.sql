CREATE TABLE [dbo].[tblStatus] (
  [StatusCode] [nvarchar](3) NOT NULL,
  [StatusType] [nvarchar](50) NULL,
  CONSTRAINT [PK_tblStatus] PRIMARY KEY CLUSTERED ([StatusCode])
)
ON [PRIMARY]
GO