CREATE TABLE [dbo].[jcm_LabourCodes] (
  [Labour Code] [nvarchar](3) NOT NULL,
  [Labour Desc] [nvarchar](30) NULL,
  [Ordering] [smallint] NULL,
  [Switchboards?] [bit] NOT NULL CONSTRAINT [DF_jcm_LabourCodes_Switchboards?] DEFAULT (0),
  [Sw Prod Rep Cats A] [nvarchar](30) NULL,
  [Sw Prod Rep Cats B] [nvarchar](30) NULL,
  [Sw Job Rep Cats] [nvarchar](10) NULL,
  [Engineering?] [bit] NOT NULL CONSTRAINT [DF_jcm_LabourCodes_Engineering?] DEFAULT (0),
  [Eng Prod Rep Cats A] [nvarchar](30) NULL,
  [Eng Prod Rep Cats B] [nvarchar](30) NULL,
  [Eng Job Rep Cats] [nvarchar](10) NULL,
  [Productive?] [bit] NOT NULL CONSTRAINT [DF_jcm_LabourCodes_Productive?] DEFAULT (0),
  [Payroll Code] [nvarchar](2) NULL,
  [Leave Code?] [bit] NOT NULL CONSTRAINT [DF_jcm_LabourCodes_Leave Code?] DEFAULT (0),
  CONSTRAINT [PK_jcm_LabourCodes] PRIMARY KEY CLUSTERED ([Labour Code])
)
ON [PRIMARY]
GO