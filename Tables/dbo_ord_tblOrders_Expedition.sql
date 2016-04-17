CREATE TABLE [dbo].[ord_tblOrders_Expedition] (
  [orderNo] [nvarchar](20) NOT NULL,
  [dtLastExpedited] [datetime] NULL,
  [ExpeditionNote] [text] NULL,
  CONSTRAINT [PK_ord_tblOrders_Expedition] PRIMARY KEY CLUSTERED ([orderNo])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO