SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[jcm_vwJobSummary_STUFFED]
AS
SELECT     dbo.jcm_JobSummary.*, dbo.jcm_JobVariations.EstablishedAcct AS Account, dbo.jcm_JobVariations.MANSalesNo AS [Sales No], 
                      dbo.jcm_JobVariations.[entered by], dbo.jcm_JobVariations.[Var Date] AS [Date Started], dbo.jcm_JobVariations.[Quote No], 
                      dbo.jcm_JobVariations.Customer, dbo.jcm_JobVariations.[Customer ABN], dbo.jcm_JobVariations.[Order No], dbo.jcm_JobVariations.[Drawings By], 
                      dbo.jcm_JobVariations.[Deliver By]
FROM         dbo.jcm_JobSummary LEFT OUTER JOIN
                      dbo.jcm_JobVariations ON dbo.jcm_JobSummary.[Job ID] = dbo.jcm_JobVariations.[Job ID]
WHERE     (dbo.jcm_JobVariations.[Var No] = 0) OR
                      (dbo.jcm_JobVariations.[Var No] IS NULL)
GO