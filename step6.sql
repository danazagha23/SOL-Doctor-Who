-- create function to list companions of specific episode
CREATE FUNCTION [dbo].[fnCompanions] (
	@EpisodeId int
)
RETURNS varchar(100)
AS
begin
	declare @companions varchar(100) = ''

	SELECT
			@companions = @companions + case when len(@companions) > 0 THEN ', ' ELSE '' END + c.CompanionName
	
	FROM 
			tblCompanion as c INNER JOIN tblEpisodeCompanion as ec ON c.CompanionId = ec.CompanionId
			
	WHERE
			@EpisodeId = ec.EpisodeId

	RETURN @companions
end
