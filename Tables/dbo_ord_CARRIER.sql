CREATE TABLE [dbo].[ord_CARRIER] (
  [carrier_id] [nvarchar](50) NOT NULL,
  [carrier_name] [nvarchar](50) NOT NULL,
  [account_no] [nvarchar](50) NOT NULL,
  [phone] [nvarchar](50) NOT NULL,
  CONSTRAINT [PK_ord_CARRIER] PRIMARY KEY CLUSTERED ([carrier_id])
)
ON [PRIMARY]
GO