CREATE TABLE [dbo].[ord_FREIGHT] (
  [freight_id] [nvarchar](50) NOT NULL,
  [freight_name] [nvarchar](50) NOT NULL,
  [Comments] [nvarchar](255) NULL,
  [ExGSTCharge] [real] NULL,
  CONSTRAINT [PK_ord_FREIGHT] PRIMARY KEY CLUSTERED ([freight_id])
)
ON [PRIMARY]
GO