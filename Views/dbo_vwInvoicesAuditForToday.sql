SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwInvoicesAuditForToday]
AS
SELECT     fc.tblInvoiceDetailsAudit.AuditID, fc.tblInvoiceDetailsAudit.lngInvoiceID, fc.tblInvoiceDetailsAudit.lngCompanyID, 
                      fc.tblInvoiceDetailsAudit.lngCustomerID, fc.tblInvoiceDetailsAudit.strInvoiceNo, fc.tblInvoiceDetailsAudit.strOrderNo, 
                      fc.tblInvoiceDetailsAudit.strUserCode, fc.tblInvoiceDetailsAudit.ynQuote, fc.tblInvoiceDetailsAudit.memDeliveryDetails, 
                      fc.tblInvoiceDetailsAudit.dtInvoiceDate, fc.tblInvoiceDetailsAudit.strCustomerName, fc.tblInvoiceDetailsAudit.strElecTransNo, 
                      fc.tblInvoiceDetailsAudit.strConNoteNo, fc.tblInvoiceDetailsAudit.strCourierName, fc.tblInvoiceDetailsAudit.dtEDITimeStamp, 
                      fc.tblInvoiceDetailsAudit.ynDeleted, fc.tblInvoiceDetailsAudit.dtDespatchDate, fc.tblInvoiceDetailsAudit.dtOrderDate, 
                      fc.tblInvoiceDetailsAudit.strSheilaTransType, fc.tblInvoiceDetailsAudit.lngCreditFromInvoiceID, fc.tblInvoiceDetailsAudit.ynEdited, 
                      fc.tblInvoiceDetailsAudit.ynOnHold, fc.tblInvoiceDetailsAudit.dtQuoteValidUntil, fc.tblInvoiceDetailsAudit.ynContract, 
                      fc.tblInvoiceDetailsAudit.oldlngCompanyID, fc.tblInvoiceDetailsAudit.oldlngCustomerID, fc.tblInvoiceDetailsAudit.oldstrInvoiceNo, 
                      fc.tblInvoiceDetailsAudit.oldstrOrderNo, fc.tblInvoiceDetailsAudit.oldstrUserCode, fc.tblInvoiceDetailsAudit.oldynQuote, 
                      fc.tblInvoiceDetailsAudit.oldmemDeliveryDetails, fc.tblInvoiceDetailsAudit.olddtInvoiceDate, fc.tblInvoiceDetailsAudit.oldstrCustomerName, 
                      fc.tblInvoiceDetailsAudit.oldstrElecTransNo, fc.tblInvoiceDetailsAudit.oldstrConNoteNo, fc.tblInvoiceDetailsAudit.oldstrCourierName, 
                      fc.tblInvoiceDetailsAudit.olddtEDITimeStamp, fc.tblInvoiceDetailsAudit.oldynDeleted, fc.tblInvoiceDetailsAudit.olddtDespatchDate, 
                      fc.tblInvoiceDetailsAudit.olddtOrderDate, fc.tblInvoiceDetailsAudit.oldstrSheilaTransType, fc.tblInvoiceDetailsAudit.oldlngCreditFromInvoiceID, 
                      fc.tblInvoiceDetailsAudit.oldynEdited, fc.tblInvoiceDetailsAudit.oldynOnHold, fc.tblInvoiceDetailsAudit.olddtQuoteValidUntil, 
                      fc.tblInvoiceDetailsAudit.oldynContract, fc.tblInvoiceDetailsAudit.Audit_User, fc.tblInvoiceDetailsAudit.Audit_Date, 
                      fc.tblInvoiceDetailsAudit.Audit_Operation
FROM         fc.tblInvoiceDetails INNER JOIN
                      fc.tblInvoiceDetailsAudit ON fc.tblInvoiceDetails.lngInvoiceID = fc.tblInvoiceDetailsAudit.lngInvoiceID
WHERE     (DAY(fc.tblInvoiceDetails.dtInvoiceDate) = DAY(GETDATE())) AND (MONTH(fc.tblInvoiceDetails.dtInvoiceDate) = MONTH(GETDATE())) AND 
                      (YEAR(fc.tblInvoiceDetails.dtInvoiceDate) = YEAR(GETDATE()))
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
         Begin Table = "tblInvoiceDetails (fc)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 232
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tblInvoiceDetailsAudit (fc)"
            Begin Extent = 
               Top = 0
               Left = 348
               Bottom = 115
               Right = 556
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
', 'SCHEMA', N'dbo', 'VIEW', N'vwInvoicesAuditForToday'
GO

EXEC sys.sp_addextendedproperty N'MS_DiagramPaneCount', 1, 'SCHEMA', N'dbo', 'VIEW', N'vwInvoicesAuditForToday'
GO