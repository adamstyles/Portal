SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwInvoiceDetails2]
AS
SELECT DISTINCT 
                      fc.vwSearchInvoicePartsDetails.lngInvoiceID, fc.vwSearchInvoicePartsDetails.strInvoiceNo, fc.vwSearchInvoicePartsDetails.strCompanyName, 
                      fc.vwSearchInvoicePartsDetails.dtInvoiceDate, SUM(fc.vwSearchInvoicePartsDetails.TotalPrice) AS TotalPrice, 
                      SUM(fc.vwSearchInvoicePartsDetails.TotalPriceExQuotes) AS TotalPriceExQuotes, 
                      CASE WHEN fc.tblUserSecurity.bytSalesmanNo = 1 THEN 'SALES' ELSE fc.vwSearchInvoicePartsDetails.strUserCode END AS Salesman, 
                      fc.vwSearchInvoicePartsDetails.strUserCode, fc.vwSearchInvoicePartsDetails.strSupplierPartCode
FROM         fc.vwSearchInvoicePartsDetails INNER JOIN
                      fc.tblUserSecurity ON fc.vwSearchInvoicePartsDetails.strUserCode = fc.tblUserSecurity.strUserCode
GROUP BY fc.vwSearchInvoicePartsDetails.lngInvoiceID, fc.vwSearchInvoicePartsDetails.strInvoiceNo, fc.vwSearchInvoicePartsDetails.strCompanyName, 
                      fc.vwSearchInvoicePartsDetails.dtInvoiceDate, fc.vwSearchInvoicePartsDetails.strUserCode, 
                      CASE WHEN fc.tblUserSecurity.bytSalesmanNo = 1 THEN 'SALES' ELSE fc.vwSearchInvoicePartsDetails.strUserCode END, 
                      fc.vwSearchInvoicePartsDetails.strSupplierPartCode
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[36] 2[4] 3) )"
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
         Begin Table = "vwSearchInvoicePartsDetails (fc)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 256
            End
            DisplayFlags = 280
            TopColumn = 13
         End
         Begin Table = "tblUserSecurity (fc)"
            Begin Extent = 
               Top = 6
               Left = 294
               Bottom = 125
               Right = 477
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
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 3960
         Output = 2385
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
', 'SCHEMA', N'dbo', 'VIEW', N'vwInvoiceDetails2'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPaneCount', 1, 'SCHEMA', N'dbo', 'VIEW', N'vwInvoiceDetails2'
GO