SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [qm].[vwModuleSummary]
AS
SELECT DISTINCT module_name, protected
FROM  qm.module_summary
GO