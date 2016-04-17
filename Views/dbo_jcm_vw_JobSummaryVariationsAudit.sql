SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[jcm_vw_JobSummaryVariationsAudit]
AS
SELECT   distinct  dbo.jcm_vw_tblJobSummaryAudit.*
FROM         dbo.jcm_vw_tblJobSummaryAudit
UNION
SELECT   distinct  dbo.jcm_vw_tblJobVariationsAudit.*
FROM         dbo.jcm_vw_tblJobVariationsAudit

GO