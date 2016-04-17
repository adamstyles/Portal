SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwSearchInvoicePartsDetails_WithInvoice_Totals_SearchAlias]
AS
SELECT     dbo.vwSearchInvoicePartsDetails_SearchAlias.lngInvoiceID, dbo.vwSearchInvoicePartsDetails_SearchAlias.lngCustomerID, 
                      dbo.vwSearchInvoicePartsDetails_SearchAlias.lngCompanyID, dbo.vwSearchInvoicePartsDetails_SearchAlias.strInvoiceNo, 
                      dbo.vwSearchInvoicePartsDetails_SearchAlias.strCustName, dbo.vwSearchInvoicePartsDetails_SearchAlias.strCompanyName, 
                      dbo.vwSearchInvoicePartsDetails_SearchAlias.strOrderNo, dbo.vwSearchInvoicePartsDetails_SearchAlias.salesman, 
                      dbo.vwSearchInvoicePartsDetails_SearchAlias.dtInvoiceDate, dbo.vwSearchInvoicePartsDetails_SearchAlias.ynOnHold, 
                      dbo.vwSearchInvoicePartsDetails_SearchAlias.strDescription, dbo.vwSearchInvoicePartsDetails_SearchAlias.strStockCode, 
                      dbo.vwSearchInvoicePartsDetails_SearchAlias.strBrand, dbo.vwSearchInvoicePartsDetails_SearchAlias.strSupplierPartCode, 
                      dbo.vwSearchInvoicePartsDetails_SearchAlias.curTotalPrice, dbo.vwSearchInvoicePartsDetails_SearchAlias.lngCreditFromInvoiceID, 
                      dbo.vwSearchInvoicePartsDetails_SearchAlias.dtEDITimeStamp, dbo.vwSearchInvoicePartsDetails_SearchAlias.ynDeleted, 
                      dbo.vwSearchInvoicePartsDetails_SearchAlias.ynQuote, dbo.vwSearchInvoicePartsDetails_SearchAlias.invPartID, 
                      dbo.vwSearchInvoicePartsDetails_SearchAlias.sngQty, dbo.vwSearchInvoicePartsDetails_SearchAlias.TotalPrice, 
                      dbo.vwSearchInvoicePartsDetails_SearchAlias.TotalPriceExQuotes, dbo.vwSearchInvoicePartsDetails_SearchAlias.TotalPriceExTaxQuotes, 
                      dbo.vwSearchInvoicePartsDetails_SearchAlias.TotalPriceExTax, dbo.vwSearchInvoicePartsDetails_SearchAlias.strUserCode, 
                      dbo.vwSearchInvoicePartsDetails_SearchAlias.ynContract, dbo.vwSearchInvoicePartsDetails_SearchAlias.strCustomerName, 
                      dbo.vwSearchInvoicePartsDetails_SearchAlias.Invoices, dbo.vwSearchInvoicePartsDetails_SearchAlias.Alias, 
                      dbo.vwInvoiceTotals.TotalPrice AS InvTotalPrice, dbo.vwInvoiceTotals.TotalPriceExQuotes AS InvTotalPriceExQuotes, 
                      dbo.vwSearchInvoicePartsDetails_SearchAlias.lngTempPartID
FROM         dbo.vwSearchInvoicePartsDetails_SearchAlias INNER JOIN
                      dbo.vwInvoiceTotals ON dbo.vwSearchInvoicePartsDetails_SearchAlias.lngInvoiceID = dbo.vwInvoiceTotals.lngInvoiceID
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[49] 4[15] 2[20] 3) )"
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
         Begin Table = "vwSearchInvoicePartsDetails_SearchAlias"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 267
               Right = 343
            End
            DisplayFlags = 280
            TopColumn = 18
         End
         Begin Table = "vwInvoiceTotals"
            Begin Extent = 
               Top = 0
               Left = 539
               Bottom = 100
               Right = 714
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
         Alias = 2220
         Table = 3450
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
', 'SCHEMA', N'dbo', 'VIEW', N'vwSearchInvoicePartsDetails_WithInvoice_Totals_SearchAlias'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPaneCount', 1, 'SCHEMA', N'dbo', 'VIEW', N'vwSearchInvoicePartsDetails_WithInvoice_Totals_SearchAlias'
GO