SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE VIEW [dbo].[jcm_vw_tblJobVariationsAudit]
AS
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'Var No' AS Field, CONVERT(nvarchar(100),[OldVar No]) AS Old, CONVERT(nvarchar(100),[Var No]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (ISNULL([OldVar No], '') <> ISNULL([Var No], '')) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'Var Date' AS Field, CONVERT(nvarchar(100),[OLDVar Date], 0) AS Old, CONVERT(nvarchar(100),[Var Date], 0) AS New, SUBSTRING(AuditUser, 6, 
10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (ISNULL([OLDVar Date], 0) <> ISNULL([Var Date], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'Var Description' AS Field, CONVERT(nvarchar(100),[OLDVar Description]) AS Old, CONVERT(nvarchar(100),[Var Description]) AS New, SUBSTRING(AuditUser, 6, 10) 
AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (ISNULL([OLDVar Description], '') <> ISNULL([Var Description], '')) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'Var Comment' AS Field, CONVERT(nvarchar(100),[OLDVar Comment]) AS Old, CONVERT(nvarchar(100),[Var Comment]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (ISNULL([OLDVar Comment], '') <> ISNULL([Var Comment], '')) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'est A' AS Field, CONVERT(nvarchar(100),[OLDest A]) AS Old, CONVERT(nvarchar(100),[est A]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (ISNULL([OLDest A], 0) <> ISNULL([est A], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'est B' AS Field, CONVERT(nvarchar(100),[Oldest B]) AS Old, CONVERT(nvarchar(100),[est B]) AS New, SUBSTRING(AuditUser, 6, 10) AS [User], 
AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (ISNULL([Oldest B], 0) <> ISNULL([est B], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'est D' AS Field, CONVERT(nvarchar(100),[OLDest D]) AS Old, CONVERT(nvarchar(100),[est D]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (ISNULL([OLDest D], 0) <> ISNULL([est D], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'est E' AS Field, CONVERT(nvarchar(100),[OLDest E]) AS Old, CONVERT(nvarchar(100),[est E]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (ISNULL([OLDest E], 0) <> ISNULL([est E], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'Est L' AS Field, CONVERT(nvarchar(100),[oldest L]) AS Old, CONVERT(nvarchar(100),[est L]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (ISNULL([oldest L], 0) <> ISNULL([est L], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'est P' AS Field, CONVERT(nvarchar(100),[OLDest P]) AS Old, CONVERT(nvarchar(100),[est P]) AS New, SUBSTRING(AuditUser, 6, 10) AS [User],
 AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (ISNULL([OLDest P], 0) <> ISNULL([est P], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'est S' AS Field, CONVERT(nvarchar(100), [OLDest S]) AS Old, CONVERT(nvarchar(100), [est S]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (ISNULL([OLDest S], 0) <> ISNULL([est S], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'est T' AS Field, CONVERT(nvarchar(100), [OLDest T]) AS Old, CONVERT(nvarchar(100), [est T]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (ISNULL([OLDest T], 0) <> ISNULL([est T], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'est W' AS Field, CONVERT(nvarchar(100), [OLDest W]) AS Old, CONVERT(nvarchar(100), [est W]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (ISNULL([OLDest W], 0) <> ISNULL([est W], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'est Prog' AS Field, CONVERT(nvarchar(100), [OLDest Prog]) AS Old, CONVERT(nvarchar(100), [est Prog]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (ISNULL([OLDest Prog], 0) <> ISNULL([est Prog], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'est Doc' AS Field, CONVERT(nvarchar(100), [OLDest Doc]) AS Old, CONVERT(nvarchar(100), [est Doc]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (ISNULL([OLDest Doc], 0) <> ISNULL([est Doc], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'est Warr' AS Field, CONVERT(nvarchar(100), [OLDest Warr]) AS Old, CONVERT(nvarchar(100), [est Warr]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (ISNULL([OLDest Warr], 0) <> ISNULL([est Warr], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'est Design' AS Field, CONVERT(nvarchar(100), [OLDest Design]) AS Old, CONVERT(nvarchar(100), [est Design]) 
AS New, SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (ISNULL([OLDest Design], 0) <> ISNULL([est Design], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'est Sup' AS Field, CONVERT(nvarchar(100), [OLDest Sup]) AS Old, CONVERT(nvarchar(100), [est Sup]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (ISNULL([OLDest Sup], 0) <> ISNULL([est Sup], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'est Quoted$' AS Field, CONVERT(nvarchar(100), [OLDest Quoted$]) AS Old, CONVERT(nvarchar(100), [est Quoted$]) 
AS New, SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (ISNULL([OLDest Quoted$], 0) <> ISNULL([est Quoted$], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'est Materials$' AS Field, CONVERT(nvarchar(100), [OLDest Materials$]) AS Old, CONVERT(nvarchar(100), [est Materials$]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (ISNULL([OLDest Materials$], 0) <> ISNULL([est Materials$], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'est Labour$' AS Field, CONVERT(nvarchar(100), [OLDest Labour$]) AS Old, CONVERT(nvarchar(100), [est Labour$]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (ISNULL([OLDest Labour$], 0) <> ISNULL([est Labour$], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'est Sundry$' AS Field, CONVERT(nvarchar(100), [OLDest Sundry$]) AS Old, CONVERT(nvarchar(100), 
[est Sundry$]) AS New, SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (ISNULL([OLDest Sundry$], 0) <> ISNULL([est Sundry$], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'est Labels$' AS Field, CONVERT(nvarchar(100), [OLDest Labels$]) AS Old, CONVERT(nvarchar(100), [est Labels$]) AS New, 
SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (ISNULL([OLDest Labels$], 0) <> ISNULL([est Labels$], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'est Freight$' AS Field, CONVERT(nvarchar(100), [OLDest freight$]) AS Old, CONVERT(nvarchar(100), [est freight$]) 
AS New, SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (ISNULL([OLDest freight$], 0) <> ISNULL([est freight$], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'est Contractor$' AS Field, CONVERT(nvarchar(100), [OLDest contractor$]) AS Old, CONVERT(nvarchar(100), [est contractor$]) 
AS New, SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (ISNULL([OLDest contractor$], 0) <> ISNULL([est contractor$], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'VarQuoteNo' AS Field, CONVERT(nvarchar(100), [OLDvarquoteno]) AS Old, CONVERT(nvarchar(100), [varquoteno]) 
AS New, SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (ISNULL([OLDvarquoteno], 0) <> ISNULL([varquoteno], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'VarCustomer' AS Field, CONVERT(nvarchar(100), [OLDvarcustomer]) AS Old, CONVERT(nvarchar(100), [varcustomer]) 
AS New, SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (ISNULL([OLDvarcustomer], 0) <> ISNULL([varcustomer], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'AcctsAuthorised' AS Field, CONVERT(nvarchar(100), [OLDAcctsAuthorised]) AS Old, CONVERT(nvarchar(100), [AcctsAuthorised]) 
AS New, SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (ISNULL([OLDAcctsAuthorised], 0) <> ISNULL([AcctsAuthorised], 0)) AND (AuditOperation = 'Update')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'AcctsAuthDate' AS Field, CONVERT(nvarchar(100), [OLDAcctsAuthDate]) AS Old, CONVERT(nvarchar(100), [AcctsAuthDate]) 
AS New, SUBSTRING(AuditUser, 6, 10) AS [User], AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (ISNULL([OLDAcctsAuthDate], '') <> ISNULL([AcctsAuthDate], '')) AND (AuditOperation = 'Update')

UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'New' AS Field, '' AS Old, CONVERT(nvarchar(100), [Job ID]) AS New, SUBSTRING(AuditUser, 6, 10) AS [User], 
AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (AuditOperation = 'Insert')
UNION ALL
SELECT DISTINCT 
TOP 100 PERCENT [auditid], [Job ID], [var no], 'Delete' AS Field, CONVERT(nvarchar(100), [Job ID]) AS Old, '' AS New, SUBSTRING(AuditUser, 6, 10) AS [User], 
AuditDate AS Date, AuditOperation AS Op
FROM         jcm_tblJobVariationsAudit
WHERE     (AuditOperation = 'delete')
ORDER BY [Job ID],[var no], AuditDate, 4






GO