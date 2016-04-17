CREATE TABLE [dbo].[PassHash] (
  [HashRef] [nvarchar](255) NOT NULL,
  [HashDescription] [nvarchar](255) NULL,
  [PassHash] [nvarchar](255) NULL,
  CONSTRAINT [PK_PassHash] PRIMARY KEY CLUSTERED ([HashRef])
)
ON [PRIMARY]
GO