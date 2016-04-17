SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [fc].[vwSecurityReport]
AS
SELECT     TOP 100 PERCENT fc.tblUserSecurity.strUserName, fc.tblSecurityLog.strUserCode, fc.tblSecurityLog.strActionType, fc.tblSecurityLog.dtTimeStamp, 
                      fc.tblSecurityLog.strModifications, fc.tblInvoiceDetails.strInvoiceNo
FROM         fc.tblSecurityLog FULL OUTER JOIN
                      fc.tblInvoiceDetails ON fc.tblSecurityLog.lngInvoiceID = fc.tblInvoiceDetails.lngInvoiceID FULL OUTER JOIN
                      fc.tblUserSecurity ON fc.tblSecurityLog.strUserCode = fc.tblUserSecurity.strUserCode
ORDER BY fc.tblInvoiceDetails.strInvoiceNo
GO