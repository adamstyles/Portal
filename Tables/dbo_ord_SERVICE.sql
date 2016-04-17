CREATE TABLE [dbo].[ord_SERVICE] (
  [carrier_id] [nvarchar](50) NOT NULL,
  [freight_id] [nvarchar](50) NOT NULL,
  [service] [nvarchar](50) NOT NULL,
  [delivery_time] [nvarchar](50) NULL,
  [origin] [nvarchar](50) NULL,
  [destination] [nvarchar](50) NULL,
  CONSTRAINT [PK_ord_SERVICE] PRIMARY KEY CLUSTERED ([carrier_id], [freight_id], [service])
)
ON [PRIMARY]
GO