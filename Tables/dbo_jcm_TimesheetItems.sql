CREATE TABLE [dbo].[jcm_TimesheetItems] (
  [Ordering] [int] IDENTITY,
  [Employee ID] [int] NULL CONSTRAINT [DF_jcm_TimesheetItems_Employee ID] DEFAULT (0),
  [Emp Location] [nvarchar](2) NULL,
  [Job ID] [int] NULL CONSTRAINT [DF_jcm_TimesheetItems_Job ID] DEFAULT (null),
  [Labour Code] [nvarchar](3) NULL,
  [Week Ending] [smalldatetime] NULL,
  [Cost Location] [nvarchar](2) NULL,
  [Mon hrs] [real] NULL,
  [Tue hrs] [real] NULL,
  [Wed hrs] [real] NULL,
  [Thu hrs] [real] NULL,
  [Fri hrs] [real] NULL,
  [Sat hrs] [real] NULL,
  [Sun hrs] [real] NULL,
  [Overtime?] [bit] NOT NULL CONSTRAINT [DF_jcm_TimesheetItems_Overtime?] DEFAULT (0),
  [Hour Factor] [real] NULL CONSTRAINT [DF_jcm_TimesheetItems_Hour Factor] DEFAULT (1),
  CONSTRAINT [PK_jcm_TimesheetItems] PRIMARY KEY CLUSTERED ([Ordering])
)
ON [PRIMARY]
GO