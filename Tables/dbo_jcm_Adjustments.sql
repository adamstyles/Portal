CREATE TABLE [dbo].[jcm_Adjustments] (
  [date] [smalldatetime] NULL,
  [Week Ending] [smalldatetime] NULL,
  [From Job ID] [int] NULL CONSTRAINT [DF_jcm_Adjustments_From Job ID] DEFAULT (null),
  [From Labour Code] [nvarchar](3) NULL,
  [From Cost Location] [nvarchar](2) NULL,
  [To Job ID] [int] NULL CONSTRAINT [DF_jcm_Adjustments_To Job ID] DEFAULT (null),
  [To Labour Code] [nvarchar](3) NULL,
  [To Cost Location] [nvarchar](2) NULL,
  [hours] [real] NULL,
  [Comment] [nvarchar](50) NULL,
  [AdjID] [int] IDENTITY,
  CONSTRAINT [PK_jcm_Adjustments] PRIMARY KEY CLUSTERED ([AdjID])
)
ON [PRIMARY]
GO