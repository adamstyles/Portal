SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwSearchInvoicePartsDetails_SearchAlias]
AS
SELECT     fc.tblInvoiceDetails.lngInvoiceID, fc.tblInvoiceDetails.lngCompanyID, fc.tblInvoiceDetails.lngCustomerID, fc.tblInvoiceDetails.strInvoiceNo, 
                      ISNULL(fc.tblCustomerDetails.strCustSurname, N'') + ISNULL(fc.tblCustomerDetails.strCustOtherName, N'') AS strCustName, 
                      ISAS_PARTS.dbo.tblCompanyDetails.CompanyName AS strCompanyName, fc.tblInvoiceDetails.strOrderNo, 
                      fc.tblInvoiceDetails.strUserCode AS salesman, fc.tblInvoiceDetails.dtInvoiceDate, fc.tblInvoiceDetails.ynOnHold, fc.tblInvoiceParts.strDescription, 
                      fc.tblInvoiceParts.strStockCode, fc.tblInvoiceParts.strBrand, fc.tblInvoiceParts.strSupplierPartCode, fc.tblInvoiceParts.curTotalPrice, 
                      fc.tblInvoiceDetails.lngCreditFromInvoiceID, fc.tblInvoiceDetails.dtEDITimeStamp, fc.tblInvoiceDetails.ynQuote, fc.tblInvoiceDetails.ynDeleted, 
                      fc.tblInvoiceParts.invPartID, fc.tblInvoiceParts.sngQty, SUM(fc.tblInvoiceParts.curTotalPrice * CASE isnull([lngCreditFromInvoiceID], 0) 
                      WHEN 0 THEN 1 ELSE - 1 END) AS TotalPrice, SUM(fc.tblInvoiceParts.curTotalPrice * CASE isnull([lngCreditFromInvoiceID], 0) 
                      WHEN 0 THEN CASE isnull([ynQuote], 0) WHEN 0 THEN 1 ELSE 0 END ELSE - 1 END) AS TotalPriceExQuotes, 
                      SUM(ROUND((ISNULL(fc.tblInvoiceParts.curSellPrice, 0) * ISNULL(fc.tblInvoiceParts.sngQty, 0)) * (1 - ISNULL(fc.tblInvoiceParts.sngDiscount, 0) / 100), 2)
                       * CASE isnull([lngCreditFromInvoiceID], 0) WHEN 0 THEN CASE isnull([ynQuote], 0) WHEN 0 THEN 1 ELSE 0 END ELSE - 1 END) 
                      AS TotalPriceExTaxQuotes, SUM(ROUND((ISNULL(fc.tblInvoiceParts.curSellPrice, 0) * ISNULL(fc.tblInvoiceParts.sngQty, 0)) 
                      * (1 - ISNULL(fc.tblInvoiceParts.sngDiscount, 0) / 100), 2) * CASE isnull([lngCreditFromInvoiceID], 0) WHEN 0 THEN 1 ELSE - 1 END) AS TotalPriceExTax, 
                      CASE WHEN fc.tblUserSecurity.bytSalesmanNo = 1 THEN 'SL' ELSE fc.tblInvoiceDetails.strUserCode END AS strUserCode, 
                      fc.tblInvoiceDetails.ynContract, fc.tblInvoiceDetails.strCustomerName, COUNT(DISTINCT fc.tblInvoiceDetails.lngInvoiceID) AS Invoices, 
                      ISAS_PARTS.dbo.vwSearchAlias.Alias, fc.tblInvoiceParts.lngTempPartID
FROM         ISAS_PARTS.dbo.vwSearchAlias RIGHT OUTER JOIN
                      fc.tblInvoiceParts ON ISAS_PARTS.dbo.vwSearchAlias.PartID = fc.tblInvoiceParts.lngTempPartID RIGHT OUTER JOIN
                      ISAS_PARTS.dbo.tblCompanyDetails RIGHT OUTER JOIN
                      fc.tblUserSecurity INNER JOIN
                      fc.tblInvoiceDetails ON fc.tblUserSecurity.strUserCode = fc.tblInvoiceDetails.strUserCode ON 
                      ISAS_PARTS.dbo.tblCompanyDetails.CompanyID = fc.tblInvoiceDetails.lngCompanyID LEFT OUTER JOIN
                      fc.tblCustomerDetails ON fc.tblInvoiceDetails.lngCustomerID = fc.tblCustomerDetails.lngCustomerID ON 
                      fc.tblInvoiceParts.lngInvoiceID = fc.tblInvoiceDetails.lngInvoiceID
GROUP BY fc.tblInvoiceDetails.lngInvoiceID, fc.tblInvoiceDetails.lngCompanyID, fc.tblInvoiceDetails.lngCustomerID, fc.tblInvoiceDetails.strInvoiceNo, 
                      ISNULL(fc.tblCustomerDetails.strCustSurname, N'') + ISNULL(fc.tblCustomerDetails.strCustOtherName, N''), 
                      ISAS_PARTS.dbo.tblCompanyDetails.CompanyName, fc.tblInvoiceDetails.strOrderNo, fc.tblInvoiceDetails.strUserCode, 
                      fc.tblInvoiceDetails.dtInvoiceDate, fc.tblInvoiceParts.strDescription, fc.tblInvoiceParts.strStockCode, fc.tblInvoiceParts.strBrand, 
                      fc.tblInvoiceParts.strSupplierPartCode, fc.tblInvoiceParts.curTotalPrice, fc.tblInvoiceDetails.lngCreditFromInvoiceID, 
                      fc.tblInvoiceDetails.dtEDITimeStamp, fc.tblInvoiceParts.sngQty, fc.tblInvoiceDetails.ynOnHold, fc.tblInvoiceDetails.ynQuote, 
                      fc.tblInvoiceDetails.ynDeleted, fc.tblUserSecurity.bytSalesmanNo, fc.tblInvoiceDetails.ynContract, fc.tblInvoiceParts.invPartID, 
                      fc.tblInvoiceDetails.strCustomerName, ISAS_PARTS.dbo.vwSearchAlias.Alias, fc.tblInvoiceParts.lngTempPartID
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[18] 4[4] 2[76] 3) )"
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
         Top = -2293
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vwSearchAlias (ISAS_PARTS.dbo)"
            Begin Extent = 
               Top = 388
               Left = 422
               Bottom = 548
               Right = 590
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "tblInvoiceParts (fc)"
            Begin Extent = 
               Top = 191
               Left = 40
               Bottom = 576
               Right = 233
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "tblCompanyDetails (ISAS_PARTS.dbo)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 251
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblUserSecurity (fc)"
            Begin Extent = 
               Top = 297
               Left = 796
               Bottom = 412
               Right = 971
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblInvoiceDetails (fc)"
            Begin Extent = 
               Top = 184
               Left = 409
               Bottom = 299
               Right = 619
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "tblCustomerDetails (fc)"
            Begin Extent = 
               Top = 130
               Left = 841
               Bottom = 245
               Right = 1036
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
 ', 'SCHEMA', N'dbo', 'VIEW', N'vwSearchInvoicePartsDetails_SearchAlias'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPane2', N'     End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 6465
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
', 'SCHEMA', N'dbo', 'VIEW', N'vwSearchInvoicePartsDetails_SearchAlias'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPaneCount', 2, 'SCHEMA', N'dbo', 'VIEW', N'vwSearchInvoicePartsDetails_SearchAlias'
GO