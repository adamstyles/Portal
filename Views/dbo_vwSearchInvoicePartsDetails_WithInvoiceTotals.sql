SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwSearchInvoicePartsDetails_WithInvoiceTotals]
AS
SELECT     dbo.vwSearchInvoicePartsDetails_V2.lngInvoiceID, dbo.vwSearchInvoicePartsDetails_V2.lngCompanyID, 
                      dbo.vwSearchInvoicePartsDetails_V2.lngCustomerID, dbo.vwSearchInvoicePartsDetails_V2.strInvoiceNo, 
                      dbo.vwSearchInvoicePartsDetails_V2.strCustName, dbo.vwSearchInvoicePartsDetails_V2.strCompanyName, 
                      dbo.vwSearchInvoicePartsDetails_V2.strOrderNo, dbo.vwSearchInvoicePartsDetails_V2.salesman, 
                      dbo.vwSearchInvoicePartsDetails_V2.dtInvoiceDate, dbo.vwSearchInvoicePartsDetails_V2.ynOnHold, 
                      dbo.vwSearchInvoicePartsDetails_V2.strDescription, dbo.vwSearchInvoicePartsDetails_V2.strStockCode, 
                      dbo.vwSearchInvoicePartsDetails_V2.strBrand, dbo.vwSearchInvoicePartsDetails_V2.strSupplierPartCode, 
                      dbo.vwSearchInvoicePartsDetails_V2.curTotalPrice, dbo.vwSearchInvoicePartsDetails_V2.lngCreditFromInvoiceID, 
                      dbo.vwSearchInvoicePartsDetails_V2.dtEDITimeStamp, dbo.vwSearchInvoicePartsDetails_V2.ynQuote, 
                      dbo.vwSearchInvoicePartsDetails_V2.ynDeleted, dbo.vwSearchInvoicePartsDetails_V2.invpartid, dbo.vwSearchInvoicePartsDetails_V2.sngQty, 
                      dbo.vwSearchInvoicePartsDetails_V2.TotalPrice, dbo.vwSearchInvoicePartsDetails_V2.TotalPriceExQuotes, 
                      dbo.vwSearchInvoicePartsDetails_V2.TotalPriceExTaxQuotes, dbo.vwSearchInvoicePartsDetails_V2.TotalPriceExTax, 
                      dbo.vwSearchInvoicePartsDetails_V2.strUserCode, dbo.vwSearchInvoicePartsDetails_V2.ynContract, 
                      dbo.vwSearchInvoicePartsDetails_V2.strCustomerName, dbo.vwSearchInvoicePartsDetails_V2.Invoices, 
                      dbo.vwInvoiceTotals.TotalPrice AS InvTotalPrice, dbo.vwInvoiceTotals.TotalPriceExQuotes AS InvTotalPriceExQuotes
FROM         dbo.vwSearchInvoicePartsDetails_V2 INNER JOIN
                      dbo.vwInvoiceTotals ON dbo.vwSearchInvoicePartsDetails_V2.lngInvoiceID = dbo.vwInvoiceTotals.lngInvoiceID
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[32] 4[45] 2[4] 3) )"
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
         Begin Table = "vwSearchInvoicePartsDetails_V2"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 459
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vwInvoiceTotals"
            Begin Extent = 
               Top = 139
               Left = 542
               Bottom = 239
               Right = 717
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
         Column = 1440
         Alias = 3810
         Table = 3075
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
', 'SCHEMA', N'dbo', 'VIEW', N'vwSearchInvoicePartsDetails_WithInvoiceTotals'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPaneCount', 1, 'SCHEMA', N'dbo', 'VIEW', N'vwSearchInvoicePartsDetails_WithInvoiceTotals'
GO