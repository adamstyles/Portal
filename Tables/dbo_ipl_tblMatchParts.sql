CREATE TABLE [dbo].[ipl_tblMatchParts] (
  [BrandID] [int] NOT NULL,
  [PartID] [int] NOT NULL,
  [SupplierPartCode] [nvarchar](50) NULL,
  [Matched] [nvarchar](50) NULL,
  [MatchField] [nvarchar](50) NULL,
  [Manual] [bit] NOT NULL CONSTRAINT [DF_ipl_tblMatchParts_Manual] DEFAULT (0),
  [Saved] [bit] NOT NULL CONSTRAINT [DF_ipl_tblMatchParts_Saved] DEFAULT (0),
  [Obsolete] [bit] NOT NULL CONSTRAINT [DF_ipl_tblMatchParts_Obsolete] DEFAULT (0),
  [QMCategory] [int] NULL,
  [Category1] [int] NULL,
  [Category2] [int] NULL,
  [Category3] [int] NULL,
  [Ignore] [bit] NOT NULL CONSTRAINT [DF_ipl_tblMatchParts_Ignore] DEFAULT (0),
  CONSTRAINT [PK_ipl_tblMatchParts] PRIMARY KEY CLUSTERED ([BrandID], [PartID])
)
ON [PRIMARY]
GO