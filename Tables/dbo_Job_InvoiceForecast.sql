CREATE TABLE [dbo].[Job_InvoiceForecast] (
  [Job ID] [int] NOT NULL,
  [Forecast Month] [datetime] NOT NULL,
  [Actual Outstanding] [real] NULL,
  [Invoice Forecast] [real] NULL,
  [Local?] [int] NULL CONSTRAINT [DF_Job_InvoiceForecast_Local?] DEFAULT (-1),
  [Invoice Date W/E] [datetime] NULL,
  [Invoice Number] [nvarchar](255) NULL,
  [Invoice Value] [real] NULL,
  [Comment] [nvarchar](255) NULL,
  [var this mth ?] [int] NULL,
  CONSTRAINT [PK_Job_InvoiceForecast] PRIMARY KEY CLUSTERED ([Job ID], [Forecast Month])
)
ON [PRIMARY]
GO