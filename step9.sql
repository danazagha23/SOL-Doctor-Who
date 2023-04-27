USE [DoctorWho]
GO
CREATE PROC [dbo].[spSummariseEpisodes]
AS
	SELECT TOP(3) c.CompanionName as [Three most frequently-appearing companions]
	FROM tblEpisodeCompanion ec JOIN tblCompanion c ON ec.CompanionId = c.CompanionId
	GROUP BY ec.CompanionId, c.CompanionName
	ORDER BY COUNT(ec.CompanionId) desc

	SELECT TOP(3) e.EnemyName AS [Three most frequently-appearing enemies]
	FROM tblEpisodeEnemy ee JOIN tblEnemy e ON ee.EnemyId = e.EnemyId
	GROUP BY ee.EnemyId, e.EnemyName
	ORDER BY COUNT(ee.EnemyId) desc

	

