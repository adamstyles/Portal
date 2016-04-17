CREATE TABLE [dbo].[cm_tblAreaSupervisor] (
  [ID] [int] IDENTITY,
  [ContractID] [int] NOT NULL,
  [Area] [nvarchar](10) NULL,
  [Supervisor] [nvarchar](50) NULL,
  [eMail] [nvarchar](50) NULL,
  CONSTRAINT [PK_cm_tblAreaSupervisor] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
GO