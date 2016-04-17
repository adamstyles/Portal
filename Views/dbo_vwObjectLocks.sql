SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwObjectLocks]
AS
SELECT     TOP (100) PERCENT Lock.request_session_id AS spid, Session.host_name AS HostName, Session.program_name AS ProgramName, Request.command AS Cmd, 
                      Session.login_name AS LoginName, Lock.resource_database_id AS dbid, DB_NAME(Lock.resource_database_id) AS DatabaseName, Lock.resource_type AS Type, 
                      Lock.request_type AS LockType, Lock.request_mode AS Mode, Lock.request_status AS Status, UserTable.name
FROM         sys.dm_tran_locks AS Lock LEFT OUTER JOIN
                      sys.dm_exec_sessions AS Session ON Session.session_id = Lock.request_session_id LEFT OUTER JOIN
                      sys.dm_exec_requests AS Request ON Request.session_id = Session.session_id LEFT OUTER JOIN
                      sys.tables AS UserTable ON UserTable.object_id = Lock.resource_associated_entity_id AND UserTable.type = 'U'
WHERE     (Lock.resource_type = 'OBJECT')
ORDER BY DatabaseName, UserTable.name
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[4] 4[34] 2[3] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Lock"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 274
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Session"
            Begin Extent = 
               Top = 6
               Left = 312
               Bottom = 125
               Right = 528
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Request"
            Begin Extent = 
               Top = 6
               Left = 566
               Bottom = 125
               Right = 785
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "UserTable"
            Begin Extent = 
               Top = 6
               Left = 823
               Bottom = 125
               Right = 1064
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 13
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 3555
         Alias = 1635
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
        ', 'SCHEMA', N'dbo', 'VIEW', N'vwObjectLocks'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPane2', N' Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'vwObjectLocks'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPaneCount', 2, 'SCHEMA', N'dbo', 'VIEW', N'vwObjectLocks'
GO