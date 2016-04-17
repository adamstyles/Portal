SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwOrderSuppliers]
AS
SELECT DISTINCT supplier, job_sheet_id
FROM  qm.job_sheet_parts
WHERE (proposed <> 0) AND (ISNULL(supplier, '') <> '') AND (ISNULL(qty, 0) <> 0)
GROUP BY supplier, job_sheet_id

GO