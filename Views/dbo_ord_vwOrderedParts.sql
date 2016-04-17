SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ord_vwOrderedParts]
AS
SELECT     dbo.ord_tblOrders.orderNo, qm.job_sheet_parts.job_sheet_id AS jobSheetID, qm.job_sheet_parts.item_no, dbo.ord_tblOrders.supplier, 
                      dbo.ord_tblOrders.supplierContact, dbo.ord_tblOrders.orderDate, dbo.ord_tblOrders.despatchDateReq, dbo.ord_tblOrders.enteredBy, 
                      dbo.ord_tblOrders.stockLocation, dbo.ord_tblOrders.ordered, dbo.ord_tblOrders.dtEDITimeStamp, dbo.ord_tblOrders.supplierID, 
                      qm.job_sheet_parts.supplier AS isasSupplier, qm.job_sheet_parts.brand, qm.job_sheet_parts.cat_no, qm.job_sheet_parts.description, 
                      qm.job_sheet_parts.secondary_part_code, qm.job_sheet_parts.price, qm.job_sheet_parts.disc, qm.job_sheet_parts.qty, qm.job_sheet_parts.UOM, 
                      qm.job_sheet_parts.date_due, qm.job_sheet_parts.date_expected, qm.job_sheet_parts.received, qm.job_sheet_parts.supplier_cat_no, 
                      qm.job_sheet_parts.book_to, qm.job_sheet_parts.line_type, (qm.job_sheet_parts.price * qm.job_sheet_parts.qty) * (100 - qm.job_sheet_parts.disc) 
                      / 100 AS LineSubTotal, (qm.job_sheet_parts.price * qm.job_sheet_parts.qty) * (100 - qm.job_sheet_parts.disc) / 100 * 0.1 AS LineGST, 
                      (qm.job_sheet_parts.price * qm.job_sheet_parts.qty) * (100 - qm.job_sheet_parts.disc) / 100 * 1.1 AS LineTotal, qm.job_sheet_parts.jspartsid, 
                      LEFT(dbo.ord_tblOrders.orderNo, 2) AS Initials, dbo.ord_tblStockLocations.stockLocation AS location, qm.job_sheet_parts.qty_rec, 
                      qm.job_sheet_parts.qty_due, qm.job_sheet_parts.qty_inv, qm.job_sheet_parts.date_rec, qm.job_sheet_parts.date_inv, 
                      CASE WHEN dbo.ord_tblOrders.deleted = 1 THEN 'C' WHEN dbo.ord_tblOrders.ordered = 0 THEN 'H' WHEN qm.job_sheet_parts.received = 1 THEN 'R' WHEN
                       qm.job_sheet_parts.qty_rec > 0 THEN 'P' ELSE 'O' END AS Status, dbo.ord_tblOrders.FollowUp, dbo.ord_tblOrders.despatchDateAct, 
                      dbo.ord_tblOrders.delivery
FROM         dbo.ord_tblOrders INNER JOIN
                      qm.job_sheet_parts ON dbo.ord_tblOrders.orderNo = qm.job_sheet_parts.order_no INNER JOIN
                      dbo.ord_tblStockLocations ON dbo.ord_tblOrders.stockLocation = dbo.ord_tblStockLocations.locationID
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
         Top = -136
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ord_tblOrders"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 211
            End
            DisplayFlags = 280
            TopColumn = 12
         End
         Begin Table = "job_sheet_parts (qm)"
            Begin Extent = 
               Top = 6
               Left = 249
               Bottom = 121
               Right = 435
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ord_tblStockLocations"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 211
               Right = 190
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
         Table = 2010
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
', 'SCHEMA', N'dbo', 'VIEW', N'ord_vwOrderedParts'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPaneCount', 1, 'SCHEMA', N'dbo', 'VIEW', N'ord_vwOrderedParts'
GO