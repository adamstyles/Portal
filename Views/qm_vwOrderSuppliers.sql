SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [qm].[vwOrderSuppliers]
AS
SELECT DISTINCT 
                      qm.job_sheet_parts.supplier, qm.job_sheet_parts.job_sheet_id, ISAS_PARTS.dbo.VW_BRAND_SUPPLIER_CODE.SupplierID, 
                      ISAS_PARTS.dbo.VW_BRAND_SUPPLIER_CODE.SheilaCode
FROM         qm.job_sheet_parts LEFT OUTER JOIN
                      ISAS_PARTS.dbo.VW_BRAND_SUPPLIER_CODE ON qm.job_sheet_parts.brand = ISAS_PARTS.dbo.VW_BRAND_SUPPLIER_CODE.Brand
WHERE     (qm.job_sheet_parts.proposed <> 0) AND (ISNULL(qm.job_sheet_parts.supplier, '') <> '') AND (ISNULL(qm.job_sheet_parts.qty, 0) <> 0)
GROUP BY qm.job_sheet_parts.supplier, qm.job_sheet_parts.job_sheet_id, ISAS_PARTS.dbo.VW_BRAND_SUPPLIER_CODE.SupplierID, 
                      ISAS_PARTS.dbo.VW_BRAND_SUPPLIER_CODE.SheilaCode
GO