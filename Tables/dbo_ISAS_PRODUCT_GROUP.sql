CREATE TABLE [dbo].[ISAS_PRODUCT_GROUP] (
  [isas_product_group] [nvarchar](50) NOT NULL,
  [group_description] [nvarchar](200) NULL,
  CONSTRAINT [PK_ISAS_PRODUCT_GROUP] PRIMARY KEY CLUSTERED ([isas_product_group])
)
ON [PRIMARY]
GO