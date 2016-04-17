SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[xx_fill_temp_suppliers_unmatched]
AS
INSERT INTO temp_suppliers_unmatched (qrytblsuppliers_supplier, qrytblbrandsupplier_supplier) 
SELECT DISTINCT qrytblSuppliers.supplier AS Expr1, qrytblBrandSupplier.supplier AS Expr2
FROM qrytblBrandSupplier INNER JOIN [qrytblSuppliers]() qrytblSuppliers ON (qrytblBrandSupplier.supplier_ID =  qrytblSuppliers.suppier_ID)
WHERE (((qrytblSuppliers.supplier) Is Null)) 
GO