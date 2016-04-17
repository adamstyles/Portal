CREATE TABLE [dbo].[Quote_WinLoss] (
  [quote_ref] [nvarchar](255) NOT NULL,
  [status_code] [int] NULL,
  [winning_price] [real] NULL,
  [comment] [nvarchar](255) NULL,
  [report_cat] [nvarchar](255) NULL,
  CONSTRAINT [PK_Quote_WinLoss] PRIMARY KEY CLUSTERED ([quote_ref])
)
ON [PRIMARY]
GO