CREATE TABLE [dbo].[ord_tblStockLocations] (
  [locationID] [int] IDENTITY,
  [stockLocation] [nvarchar](50) NULL,
  [Department] [nvarchar](2) NULL,
  CONSTRAINT [PK_ord_tblStockLocations] PRIMARY KEY CLUSTERED ([locationID])
)
ON [PRIMARY]
GO