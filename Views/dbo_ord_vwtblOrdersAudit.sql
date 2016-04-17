SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ord_vwtblOrdersAudit]
AS
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [orderno], 'Supplier' AS Field, [OldSupplier] AS Old,
[Supplier] AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         ord_tblOrdersAudit
WHERE     (ISNULL([OldSupplier], '') <> ISNULL([Supplier], '')) 
AND (AuditOperation = 'Update')
UNION
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [orderno], 'Supplier Fax' AS Field, [OldSupplierFax] AS Old,
[SupplierFax] AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         ord_tblOrdersAudit
WHERE     (ISNULL([OldSupplierFax], '') <> ISNULL([SupplierFax], '')) 
AND (AuditOperation = 'Update')
UNION
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [orderno], 'Supplier Phone' AS Field, [OldSupplierPhone] AS Old,
[SupplierPhone] AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         ord_tblOrdersAudit
WHERE     (ISNULL([OldSupplierPhone], '') <> ISNULL([SupplierPhone], '')) 
AND (AuditOperation = 'Update')
UNION
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [orderno], 'Supplier Contact' AS Field, [OldSupplierContact] AS Old,
[SupplierContact] AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         ord_tblOrdersAudit
WHERE     (ISNULL([OldSupplierContact], '') <> ISNULL([SupplierContact], '')) 
AND (AuditOperation = 'Update')
UNION
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [orderno], 'Order Note' AS Field, [OldOrderNote] AS Old,
[OrderNote] AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         ord_tblOrdersAudit
WHERE     (ISNULL([OldOrderNote], '') <> ISNULL([OrderNote], '')) 
AND (AuditOperation = 'Update')
UNION
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [orderno], 'Order Date' AS Field, CONVERT(nvarchar(100),[OldOrderDate]) AS Old,
CONVERT(nvarchar(100),[OrderDate]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         ord_tblOrdersAudit
WHERE     (ISNULL([OldOrderDate], 0) <> ISNULL([OrderDate], 0)) 
AND (AuditOperation = 'Update')
UNION
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [orderno], 'Despatch Date' AS Field, CONVERT(nvarchar(100),[OlddespatchDateReq]) AS Old,
CONVERT(nvarchar(100),[despatchDateReq]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         ord_tblOrdersAudit
WHERE     (ISNULL([OlddespatchDateReq], 0) <> ISNULL([despatchDateReq], 0)) 
AND (AuditOperation = 'Update')
UNION
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [orderno], 'Service' AS Field, [OldService] AS Old,
[Service] AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         ord_tblOrdersAudit
WHERE     (ISNULL([OldService], '') <> ISNULL([Service], '')) 
AND (AuditOperation = 'Update')
UNION
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [orderno], 'Account No' AS Field, [OldaccountNo] AS Old,
[accountNo] AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         ord_tblOrdersAudit
WHERE     (ISNULL([OldaccountNo], '') <> ISNULL([accountNo], '')) 
AND (AuditOperation = 'Update')
UNION
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [orderno], 'Delivery VIA' AS Field, [OlddeliveryVIA] AS Old,
[deliveryVIA] AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         ord_tblOrdersAudit
WHERE     (ISNULL([OlddeliveryVIA], '') <> ISNULL([deliveryVIA], '')) 
AND (AuditOperation = 'Update')
UNION
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [orderno], 'Contact' AS Field, [OldContact] AS Old,
[Contact] AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         ord_tblOrdersAudit
WHERE     (ISNULL([OldContact], '') <> ISNULL([Contact], '')) 
AND (AuditOperation = 'Update')
UNION
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [orderno], 'Delivery' AS Field, [OldDelivery] AS Old,
[Delivery] AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         ord_tblOrdersAudit
WHERE     (ISNULL([OldDelivery], '') <> ISNULL([Delivery], '')) 
AND (AuditOperation = 'Update')
UNION
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [orderno], 'Freight' AS Field, CONVERT(nvarchar(100), [OldFreight]) AS Old,
CONVERT(nvarchar(100), [Freight]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         ord_tblOrdersAudit
WHERE     (ISNULL([OldFreight], 0) <> ISNULL([Freight], 0)) 
AND (AuditOperation = 'Update')
UNION
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [orderno], 'Cancelled' AS Field, CONVERT(nvarchar(100), [OldDeleted]) AS Old,
CONVERT(nvarchar(100), [Deleted]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         ord_tblOrdersAudit
WHERE     (ISNULL([OldDeleted], '') <> ISNULL([Deleted], '')) 
AND (AuditOperation = 'Update')
UNION
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [orderno], 'Entered By' AS Field, [OldEnteredBy] AS Old,
[EnteredBy] AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         ord_tblOrdersAudit
WHERE     (ISNULL([OldEnteredBy], '') <> ISNULL([EnteredBy], '')) 
AND (AuditOperation = 'Update')
UNION
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [orderno], 'Updated By' AS Field, [OldUpdatedBy] AS Old,
[UpdatedBy] AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         ord_tblOrdersAudit
WHERE     (ISNULL([OldUpdatedBy], '') <> ISNULL([UpdatedBy], '')) 
AND (AuditOperation = 'Update')
UNION
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [OrderNo], 'New' AS Field, '' AS Old, CONVERT(nvarchar(100), [OrderNo]) AS New, SUBSTRING(AuditUser, 6, 10) AS [User], 
AuditDate AS Date, AuditOperation AS Op
FROM         ord_tblOrdersAudit
WHERE     (AuditOperation = 'Insert')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [OrderNo], 'Delete' AS Field, CONVERT(nvarchar(100), [OrderNo]) AS Old, '' AS New, SUBSTRING(AuditUser, 6, 10) AS [User], 
AuditDate AS Date, AuditOperation AS Op
FROM         ord_tblOrdersAudit
WHERE     (AuditOperation = 'delete')
ORDER BY [orderno], AuditDate, 3


GO