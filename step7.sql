-- create function to list enemies of specific episode
CREATE FUNCTION [dbo].[fnEnemies] (
	@EpisodeId int
)
RETURNS varchar(100)
AS
begin
	declare @enemies varchar(100) = ''

	SELECT
			@enemies = @enemies + case when len(@enemies) > 0 THEN ', ' ELSE '' END + e.EnemyName
	
	FROM 
			tblEnemy as e INNER JOIN tblEpisodeEnemy as ee ON e.EnemyId = ee.EnemyId
			
	WHERE
			@EpisodeId = ee.EpisodeId

	RETURN @enemies
end