CREATE TABLE [dbo].[tblReportGroup] (
  [ID] [int] IDENTITY,
  [GroupLabelID] [int] NOT NULL,
  [DiscountCode] [nvarchar](20) NOT NULL,
  [WildCardInc] [nvarchar](254) NOT NULL,
  [WildCardExc] [nvarchar](254) NULL,
  [Comments] [nvarchar](254) NULL,
  CONSTRAINT [PK_tblReportGroup] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
GO