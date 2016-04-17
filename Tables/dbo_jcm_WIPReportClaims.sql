CREATE TABLE [dbo].[jcm_WIPReportClaims] (
  [Rep End Date] [smalldatetime] NULL,
  [job loc] [nvarchar](2) NULL,
  [Cust-Desc] [nvarchar](254) NULL,
  [Job Num Lk] [nvarchar](30) NULL,
  [Cost Plus Lk] [bit] NOT NULL CONSTRAINT [DF_jcm_WIPReportClaims_Cost Plus Lk] DEFAULT (0),
  [% Claimed] [real] NULL,
  [Delete] [bit] NOT NULL CONSTRAINT [DF_jcm_WIPReportClaims_Delete] DEFAULT (0),
  [WIPID] [int] IDENTITY,
  CONSTRAINT [PK_jcm_WIPReportClaims] PRIMARY KEY CLUSTERED ([WIPID])
)
ON [PRIMARY]
GO