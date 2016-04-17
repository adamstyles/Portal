SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[jcm_vwJobSumDetailsTotal]
AS
SELECT     SUM([est A]) AS [SumOfest A], SUM([est B]) AS [SumOfest B], SUM([est D]) AS [SumOfest D], SUM([est E]) AS [SumOfest E], SUM([est L]) AS [SumOfest L],
                       SUM([est P]) AS [SumOfest P], SUM([est S]) AS [SumOfest S], SUM([est T]) AS [SumOfest T], SUM([est W]) AS [SumOfest W], SUM([est Prog]) 
                      AS [SumOfest Prog], SUM([est Doc]) AS [SumOfest Doc], SUM([est Warr]) AS [SumOfest Warr], SUM([est Design]) AS [SumOfest Design], SUM([est Sup]) 
                      AS [SumOfest Sup], SUM([est Quoted$]) AS [SumOfest Quoted$], SUM([est Materials$]) AS [SumOfest Materials$], SUM([est Labour$]) 
                      AS [SumOfest Labour$], SUM([est Sundry$]) AS [SumOfest Sundry$], SUM([est Labels$]) AS [SumOfest Labels$], SUM([est Freight$]) 
                      AS [SumOfest Freight$], SUM([est Contractor$]) AS [Sumofest subcontract$], SUM(ISNULL([est Prog], 0) + ISNULL([est Doc], 0) + ISNULL([est Warr], 0) 
                      + ISNULL([est Design], 0) + ISNULL([est Sup], 0)) AS [est Total Eng Hours], SUM(ISNULL([est A], 0) + ISNULL([est B], 0) + ISNULL([est D], 0) 
                      + ISNULL([est E], 0) + ISNULL([est L], 0) + ISNULL([est P], 0) + ISNULL([est S], 0) + ISNULL([est T], 0) + ISNULL([est W], 0)) AS [est Total Prod Hours], 
                      SUM(ISNULL([est A], 0) + ISNULL([est B], 0) + ISNULL([est D], 0) + ISNULL([est E], 0) + ISNULL([est L], 0) + ISNULL([est P], 0) + ISNULL([est S], 0) 
                      + ISNULL([est T], 0) + ISNULL([est W], 0)) + SUM(ISNULL([est Prog], 0) + ISNULL([est Doc], 0) + ISNULL([est Warr], 0) + ISNULL([est Design], 0) 
                      + ISNULL([est Sup], 0)) AS [est Total Hours], [Job ID]
FROM         dbo.jcm_JobVariations [Job Variations]
GROUP BY [Job ID]
GO