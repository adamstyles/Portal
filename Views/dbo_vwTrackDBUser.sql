SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[vwTrackDBUser]
AS
SELECT     dbo.tblTrackDBUsers.*, dbo.tblDatabases.title AS DBName
FROM         dbo.tblTrackDBUsers INNER JOIN
                      dbo.tblDatabases ON dbo.tblTrackDBUsers.DatabaseName = dbo.tblDatabases.DBID
GO