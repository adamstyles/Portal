﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ord_vwOrderedPartsReceipt]
AS
SELECT     dbo.ord_vwOrderedParts.*, ISNULL(dbo.ord_vwOrderReceiptTotal.QtyRec, 0) AS QtyRec, ISNULL(dbo.ord_vwOrderedParts.qty, 0) 
                      - ISNULL(dbo.ord_vwOrderReceiptTotal.QtyRec, 0) AS QtyDue, CASE WHEN isnull([qtyrec], 0) <> 0 AND ISNULL(dbo.ord_vwOrderedParts.qty, 0) 
                      - ISNULL(dbo.ord_vwOrderReceiptTotal.QtyRec, 0) <> 0 AND [status] = 'O' THEN 'P' ELSE [status] END AS StatusP, 
                      dbo.ord_vwOrderReceiptTotal.DateRec
FROM         dbo.ord_vwOrderedParts LEFT OUTER JOIN
                      dbo.ord_vwOrderReceiptTotal ON dbo.ord_vwOrderedParts.jspartsid = dbo.ord_vwOrderReceiptTotal.jspartsID
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[50] 2[25] 3) )"
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
         Configuration = "(H (1 [56] 4 [18] 2))"
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
         Begin Table = "ord_vwOrderedParts"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ord_vwOrderReceiptTotal"
            Begin Extent = 
               Top = 6
               Left = 262
               Bottom = 106
               Right = 414
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
      RowHeights = 220
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
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
', 'SCHEMA', N'dbo', 'VIEW', N'ord_vwOrderedPartsReceipt'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPaneCount', 1, 'SCHEMA', N'dbo', 'VIEW', N'ord_vwOrderedPartsReceipt'
GO