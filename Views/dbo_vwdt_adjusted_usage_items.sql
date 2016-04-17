SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwdt_adjusted_usage_items]
AS
SELECT DISTINCT cm.[Usage Items].*
FROM         cm.[Usage Items]
UNION ALL
SELECT DISTINCT [Adj Date], [Contract ID], [Part ID], [Qty], [Unit Sell Price], [Tax Category], [Unit Tax], [Adj Date], [CMPARTID], 0, 0, 0, 0
FROM         cm.[Adjustments]
WHERE     [Adj Type] = 'U'
GO