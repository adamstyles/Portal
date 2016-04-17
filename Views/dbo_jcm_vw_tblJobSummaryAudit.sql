SET QUOTED_IDENTIFIER OFF

SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[jcm_vw_tblJobSummaryAudit]
AS
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], 0 as 'Var No', 'Job No' AS Field, CONVERT(nvarchar(100), [OldJob No]) AS Old, CONVERT(nvarchar(100), [Job No]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobSummaryAudit
WHERE     (ISNULL([OldJob No], '') <> ISNULL([Job No], '')) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], 0 as 'Var No', 'Job Description' AS Field, CONVERT(nvarchar(100), [OLDJob Description]) AS Old, CONVERT(nvarchar(100), [Job Description]) AS New, SUBSTRING(AuditUser, 6, 
10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobSummaryAudit
WHERE     (ISNULL([OLDJob Description], '') <> ISNULL([Job Description], '')) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], 0 as 'Var No', 'Job Location' AS Field, CONVERT(nvarchar(100), [OLDJob Location]) AS Old, CONVERT(nvarchar(100), [Job Location]) AS New, SUBSTRING(AuditUser, 6, 10) 
AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobSummaryAudit
WHERE     (ISNULL([OLDJob Location], '') <> ISNULL([Job Location], '')) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], 0 as 'Var No', 'Entered By' AS Field, CONVERT(nvarchar(100), [OLDEntered By]) AS Old, CONVERT(nvarchar(100), [Entered By]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobSummaryAudit
WHERE     (ISNULL([OLDEntered By], '') <> ISNULL([Entered By], '')) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], 0 as 'Var No', 'Quote No' AS Field, CONVERT(nvarchar(100), [OLDQuote No]) AS Old, CONVERT(nvarchar(100), [Quote No]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobSummaryAudit
WHERE     (ISNULL([OLDQuote No], '') <> ISNULL([Quote No], '')) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], 0 as 'Var No', 'Customer' AS Field, CONVERT(nvarchar(100), [OldCustomer]) AS Old, CONVERT(nvarchar(100), [Customer]) AS New, SUBSTRING(AuditUser, 6, 10) AS [User], 
AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobSummaryAudit
WHERE     (ISNULL([OldCustomer], '') <> ISNULL([Customer], '')) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], 0 as 'Var No', 'Customer ABN' AS Field, CONVERT(nvarchar(100), [OLDCustomer ABN]) AS Old, CONVERT(nvarchar(100), [Customer ABN]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobSummaryAudit
WHERE     (ISNULL([OLDCustomer ABN], '') <> ISNULL([Customer ABN], '')) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], 0 as 'Var No', 'Account' AS Field, CONVERT(nvarchar(100), [OLDAccount]) AS Old, CONVERT(nvarchar(100), [Account]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobSummaryAudit
WHERE     (ISNULL([OLDAccount], '') <> ISNULL([Account], '')) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], 0 as 'Var No', 'Sales No' AS Field, CONVERT(nvarchar(100), [oldSales No]) AS Old, CONVERT(nvarchar(100), [Sales No]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobSummaryAudit
WHERE     (ISNULL([oldSales No], '') <> ISNULL([Sales No], '')) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], 0 as 'Var No', 'Order No' AS Field, CONVERT(nvarchar(100), [OLDOrder No]) AS Old, CONVERT(nvarchar(100), [Order No]) AS New, SUBSTRING(AuditUser, 6, 10) AS [User],
 AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobSummaryAudit
WHERE     (ISNULL([OLDOrder No], '') <> ISNULL([Order No], '')) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], 0 as 'Var No', 'Drawings By' AS Field, CONVERT(nvarchar(100), [OLDDrawings By]) AS Old, CONVERT(nvarchar(100), [Drawings By]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobSummaryAudit
WHERE     (ISNULL([OLDDrawings By], 0) <> ISNULL([Drawings By], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], 0 as 'Var No', 'Deliver By' AS Field, CONVERT(nvarchar(100), [OLDDeliver By]) AS Old, CONVERT(nvarchar(100), [Deliver By]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobSummaryAudit
WHERE     (ISNULL([OLDDeliver By], 0) <> ISNULL([Deliver By], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], 0 as 'Var No', 'act Mat&Sund&Lab$' AS Field, CONVERT(nvarchar(100), [OLDact Mat&Sund&Lab$]) AS Old, CONVERT(nvarchar(100), [act Mat&Sund&Lab$]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobSummaryAudit
WHERE     (ISNULL([OLDact Mat&Sund&Lab$], 0) <> ISNULL([act Mat&Sund&Lab$], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], 0 as 'Var No', 'act Labour$' AS Field, CONVERT(nvarchar(100), [OLDact Labour$]) AS Old, CONVERT(nvarchar(100), [act Labour$]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobSummaryAudit
WHERE     (ISNULL([OLDact Labour$], 0) <> ISNULL([act Labour$], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], 0 as 'Var No', 'Invoiced' AS Field, CONVERT(nvarchar(100), [OLDInvoiced]) AS Old, CONVERT(nvarchar(100), [Invoiced]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobSummaryAudit
WHERE     (ISNULL([OLDInvoiced], 0) <> ISNULL([Invoiced], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], 0 as 'Var No', 'Under/Over Date' AS Field, CONVERT(nvarchar(100), [OLDUnder/Over Date]) AS Old, CONVERT(nvarchar(100), [Under/Over Date]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobSummaryAudit
WHERE     (ISNULL([OLDUnder/Over Date], 0) <> ISNULL([Under/Over Date], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], 0 as 'Var No', 'On Hold' AS Field, CONVERT(nvarchar(100), [OLDOn Hold]) AS Old, CONVERT(nvarchar(100), [On Hold]) 
AS New, SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobSummaryAudit
WHERE     (ISNULL([OLDOn Hold], 0) <> ISNULL([On Hold], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], 0 as 'Var No', 'Cost Plus' AS Field, CONVERT(nvarchar(100), [OLDCost Plus]) AS Old, CONVERT(nvarchar(100), [Cost Plus]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobSummaryAudit
WHERE     (ISNULL([OLDCost Plus], 0) <> ISNULL([Cost Plus], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], 0 as 'Var No', 'Display Eng Prod' AS Field, CONVERT(nvarchar(100), [OLDDisplay Eng Prod]) AS Old, CONVERT(nvarchar(100), [Display Eng Prod]) 
AS New, SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobSummaryAudit
WHERE     (ISNULL([OLDDisplay Eng Prod], 0) <> ISNULL([Display Eng Prod], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], 0 as 'Var No', 'Display Sw Prod' AS Field, CONVERT(nvarchar(100), [OLDDisplay Sw Prod]) AS Old, CONVERT(nvarchar(100), [Display Sw Prod]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobSummaryAudit
WHERE     (ISNULL([OLDDisplay Sw Prod], 0) <> ISNULL([Display Sw Prod], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], 0 as 'Var No', 'SSS Job' AS Field, CONVERT(nvarchar(100), [OLDSSS Job]) AS Old, CONVERT(nvarchar(100), [SSS Job]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobSummaryAudit
WHERE     (ISNULL([OLDSSS Job], 0) <> ISNULL([SSS Job], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], 0 as 'Var No', 'Date Started' AS Field, CONVERT(nvarchar(100), [OLDDate Started]) AS Old, CONVERT(nvarchar(100), 
[Date Started]) AS New, SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobSummaryAudit
WHERE     (ISNULL([OLDDate Started], 0) <> ISNULL([Date Started], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], 0 as 'Var No', 'R&D Job' AS Field, CONVERT(nvarchar(100), [OLDR&D Job]) AS Old, CONVERT(nvarchar(100), [R&D Job]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobSummaryAudit
WHERE     (ISNULL([OLDR&D Job], 0) <> ISNULL([R&D Job], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], 0 as 'Var No', 'Deleted' AS Field, CONVERT(nvarchar(100), [OLDDeleted]) AS Old, CONVERT(nvarchar(100), [Deleted]) 
AS New, SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobSummaryAudit
WHERE     (ISNULL([OLDDeleted], 0) <> ISNULL([Deleted], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], 0 as 'Var No', 'Last Modified' AS Field, CONVERT(nvarchar(100), [OLDLast Modified]) AS Old, CONVERT(nvarchar(100), [Last Modified]) 
AS New, SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobSummaryAudit
WHERE     (ISNULL([OLDLast Modified], 0) <> ISNULL([Last Modified], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], 0 as 'Var No', 'Archive' AS Field, CONVERT(nvarchar(100), [OLDArchive]) AS Old, CONVERT(nvarchar(100), [Archive]) 
AS New, SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobSummaryAudit
WHERE     (ISNULL([OLDArchive], 0) <> ISNULL([Archive], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], 0 as 'Var No', 'ProjectFilePath' AS Field, CONVERT(nvarchar(100), [OLDProjectFilePath]) AS Old, CONVERT(nvarchar(100), [ProjectFilePath]) 
AS New, SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobSummaryAudit
WHERE     (ISNULL([OLDProjectFilePath], 0) <> ISNULL([ProjectFilePath], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], 0 as 'Var No', 'New' AS Field, '' AS Old, CONVERT(nvarchar(100), [Job ID]) AS New, SUBSTRING(AuditUser, 6, 10) AS [User], 
AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobSummaryAudit
WHERE     (AuditOperation = 'Insert')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], 0 as 'Var No', 'Delete' AS Field, CONVERT(nvarchar(100), [Job ID]) AS Old, '' AS New, SUBSTRING(AuditUser, 6, 10) AS [User], 
AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobSummaryAudit
WHERE     (AuditOperation = 'delete')
ORDER BY [Job ID], AuditDate, 3



GO