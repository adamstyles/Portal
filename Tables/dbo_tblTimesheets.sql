CREATE TABLE [dbo].[tblTimesheets] (
  [TimesheetID] [int] IDENTITY,
  [EmployeeID] [int] NOT NULL,
  [WeekEndingDate] [smalldatetime] NOT NULL,
  [Submitted] [bit] NOT NULL DEFAULT (0),
  CONSTRAINT [PK_tblTimesheets] PRIMARY KEY CLUSTERED ([TimesheetID])
)
ON [PRIMARY]
GO