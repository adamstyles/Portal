CREATE TABLE [dbo].[tblSCNShipmentSummary] (
  [SCNShipmentID] [int] IDENTITY,
  [SCNShipmentNo] [nvarchar](50) NOT NULL,
  [ContractID] [int] NOT NULL,
  [Locked] [bit] NOT NULL CONSTRAINT [DF_tblSCNShipmentSummary_Locked] DEFAULT (0),
  [DateTime] [datetime] NOT NULL,
  [UserID] [nvarchar](10) NOT NULL,
  [dtShipment] [datetime] NULL,
  [dtLastLock] [datetime] NULL,
  CONSTRAINT [PK_tblSCNShipmentSummary] PRIMARY KEY CLUSTERED ([SCNShipmentID])
)
ON [PRIMARY]
GO