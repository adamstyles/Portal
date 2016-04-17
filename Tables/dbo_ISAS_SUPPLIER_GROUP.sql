CREATE TABLE [dbo].[ISAS_SUPPLIER_GROUP] (
  [isas_supplier_group] [nvarchar](50) NOT NULL,
  [group_description] [nvarchar](200) NULL,
  CONSTRAINT [PK_ISAS_SUPPLIER_GROUP] PRIMARY KEY CLUSTERED ([isas_supplier_group])
)
ON [PRIMARY]
GO