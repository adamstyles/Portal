SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[jcm_vwJobSummary]
AS
SELECT     dbo.jcm_JobSummary.[Job ID], dbo.jcm_JobSummary.[Job No], dbo.jcm_JobSummary.[Job Description], dbo.jcm_JobSummary.[Job Location], 
                      dbo.jcm_JobSummary.[act Mat&Sund&Lab$], dbo.jcm_JobSummary.[act Labour$], dbo.jcm_JobSummary.Invoiced, 
                      dbo.jcm_JobSummary.[Under/Over Date], dbo.jcm_JobSummary.[On Hold], dbo.jcm_JobSummary.[Cost Plus], 
                      dbo.jcm_JobSummary.[Display Eng Prod], dbo.jcm_JobSummary.[Display Sw Prod], dbo.jcm_JobSummary.[SSS Job], 
                      dbo.jcm_JobSummary.[R&D Job], dbo.jcm_JobSummary.Deleted, dbo.jcm_JobSummary.[Last Modified], dbo.jcm_JobSummary.Archive, 
                      dbo.jcm_JobSummary.ProjectFilePath, dbo.jcm_JobSummary.AuditCreatedBy, dbo.jcm_JobSummary.AuditCreated, 
                      dbo.jcm_JobSummary.AuditUpdatedBy, dbo.jcm_JobSummary.AuditUpdated, dbo.jcm_JobSummary.VisionID, dbo.jcm_JobSummary.DateUpdatedISAS, 
                      dbo.jcm_JobSummary.DateUpdatedVision, dbo.jcm_JobSummary.SundryTransferred, dbo.jcm_JobSummary.DateSundryTransferred, 
                      dbo.jcm_JobVariations.EstablishedAcct AS Account, dbo.jcm_JobVariations.MANSalesNo AS [Sales No], dbo.jcm_JobVariations.[entered by], 
                      dbo.jcm_JobVariations.[Var Date] AS [Date Started], dbo.jcm_JobVariations.[Quote No], dbo.jcm_JobVariations.Customer, 
                      dbo.jcm_JobVariations.[Customer ABN], dbo.jcm_JobVariations.[Order No], dbo.jcm_JobVariations.[Drawings By], 
                      dbo.jcm_JobVariations.[Deliver By]
FROM         dbo.jcm_JobSummary LEFT OUTER JOIN
                      dbo.jcm_JobVariations ON dbo.jcm_JobSummary.[Job ID] = dbo.jcm_JobVariations.[Job ID]
WHERE     (dbo.jcm_JobVariations.[Var No] = 0) OR
                      (dbo.jcm_JobVariations.[Var No] IS NULL)
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[15] 4[45] 2[22] 3) )"
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
         Begin Table = "jcm_JobSummary"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 233
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "jcm_JobVariations"
            Begin Extent = 
               Top = 6
               Left = 271
               Bottom = 121
               Right = 469
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
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1905
         Alias = 1350
         Table = 1485
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'jcm_vwJobSummary'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPaneCount', 1, 'SCHEMA', N'dbo', 'VIEW', N'jcm_vwJobSummary'
GO