SET QUOTED_IDENTIFIER OFF

SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ord_vwOrdersNotReceived]
AS
SELECT DISTINCT dbo.ord_vwOrders.*
FROM         dbo.ord_vwOrders INNER JOIN
                      qm.job_sheet_parts ON dbo.ord_vwOrders.[order No] = qm.job_sheet_parts.order_no
WHERE     (qm.job_sheet_parts.received = 0) AND (dbo.ord_vwOrders.Status = 'S')


GO