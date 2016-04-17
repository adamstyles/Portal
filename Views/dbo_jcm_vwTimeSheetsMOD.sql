SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[jcm_vwTimeSheetsMOD]
AS
SELECT     [Job ID], SUM((ISNULL([Mon hrs], 0) + ISNULL([Tue hrs], 0) + ISNULL([Wed hrs], 0) + ISNULL([Thu hrs], 0) + ISNULL([Fri hrs], 0) + ISNULL([Sat hrs], 0) 
                      + ISNULL([Sun hrs], 0)) * ISNULL([Hour Factor], 0)) AS [Mod Hrs], [Employee ID], [Emp Location], [Labour Code], [Week Ending], [Cost Location]
FROM         dbo.jcm_TimesheetItems
GROUP BY [Job ID], [Employee ID], [Emp Location], [Labour Code], [Week Ending], [Cost Location]
HAVING      (SUM((ISNULL([Mon hrs], 0) + ISNULL([Tue hrs], 0) + ISNULL([Wed hrs], 0) + ISNULL([Thu hrs], 0) + ISNULL([Fri hrs], 0) + ISNULL([Sat hrs], 0) 
                      + ISNULL([Sun hrs], 0)) * ISNULL([Hour Factor], 0)) <> 0)
GO