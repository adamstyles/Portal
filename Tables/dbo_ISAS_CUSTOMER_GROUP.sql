CREATE TABLE [dbo].[ISAS_CUSTOMER_GROUP] (
  [isas_customer_group] [nvarchar](50) NOT NULL,
  [group_description] [nvarchar](200) NULL,
  CONSTRAINT [PK_ISAS_CUSTOMER_GROUP] PRIMARY KEY CLUSTERED ([isas_customer_group])
)
ON [PRIMARY]
GO