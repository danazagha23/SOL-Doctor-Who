
CREATE VIEW [dbo].[ViewEpisodes]
AS  
	SELECT e.EpisodeId, e.Title, a.AuthorName, d.DoctorName, [dbo].[fnCompanions](e.EpisodeId) as Companions, [dbo].[fnEnemies](e.EpisodeId) as Enemies 
	
	FROM tblEpisode AS e 
	
	INNER JOIN tblAuthor AS  a  
	ON e.AuthorId = a.AuthorId 
	
	INNER JOIN tblDoctor AS  d
	ON e.DoctorId = d.DoctorId 